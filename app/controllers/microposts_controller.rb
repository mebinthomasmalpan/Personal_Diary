class MicropostsController < ApplicationController
  def destroy
    @micropost = current_user.microposts.find_by(id: params[:id])
    @micropost.destroy
    flash[:success] = "Entry Removed"
    redirect_to current_user
  end
end
