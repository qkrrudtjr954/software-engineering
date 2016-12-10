class StoreController < ApplicationController
  before_action :authenticate_user!
  skip_before_filter :verify_authenticity_token, :only => :create
  def store_index
    @store = Store.all.reverse
  end

  def create
    uploader = MachineUploader.new
    file = params[:pic]
    uploader.store!(file)


    if(params[:content]=="")
      flash[:error] ="Please, input any words"
    else
      flash[:success] ="Post!"
      Store.create(content: params[:content], cost: params[:cost], state: params[:state], writer: params[:user_name], img_url: uploader.url)
    end
    redirect_back fallback_location: { action: "store_index" }
  end
  def store_destroy
    @store_post=Store.find_by_id(params[:id])
    flash[:success] ="삭제 되었습니다."
    @store_post.destroy
    redirect_to :back
  end
  def store_detail
    @detail = Store.find(params[:id])
  end
  def store_detail_create
    if(params[:content]=="")
      flash[:error] ="Please, input any words"
    else
      flash[:success] ="Comment!"
      StoreComment.create( store_id: params[:store_id], content: params[:content], writer: params[:user_name])
    end
    redirect_back fallback_location: { action: "detail" }
  end
  def store_comment_destroy
    @store_comment=StoreComment.find_by_id(params[:id])
    flash[:success] ="삭제 되었습니다."
    @store_comment.destroy
    redirect_to :back
  end
end
