class QnaController < ApplicationController
  before_action :authenticate_user!
  def qna_index
    @post = Post.all.reverse
  end
  def create
    if(params[:content]=="")
      flash[:error] ="Please, input any words"
    else
      flash[:success] ="Post!"
      Post.create(content: params[:content], writer: params[:user_name])
    end
    redirect_back fallback_location: { action: "qna_index" }
  end
  def destroy
    @post=Post.find_by_id(params[:id])
    flash[:success] ="삭제 되었습니다."
    @post.destroy
    redirect_to :back
  end
  def detail
    @detail = Post.find(params[:id])
  end
  def detail_create
    if(params[:content]=="")
      flash[:error] ="Please, input any words"
    else
      flash[:success] ="Comment!"
      Comment.create( post_id: params[:post_id], content: params[:content], writer: params[:user_name])
    end
    redirect_back fallback_location: { action: "detail" }
  end
  def comment_destroy
    @comment=Comment.find_by(params[:id])
    flash[:success] ="삭제 되었습니다."
    @comment.destroy
    redirect_to :back
  end
end
