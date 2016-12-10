class AdminController < ApplicationController
  def admin_index

  end
  def admin_import
    Professor.import(params[:file])
    flash[:success] ="Import"
    redirect_back fallback_location: { action: "admin_index"}
  end
end
