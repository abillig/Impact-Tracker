class UsersController < ApplicationController

  def new
    if current_user
      redirect_to root_url
    else
      @user = User.new
      @publications = Publication.all
    end
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to root_url
  end

  def profile
    @user = current_user
  end

  private

  def user_params
    params[:user][:publication] = Publication.where(name: params[:user][:publication])
    params.require(:user).permit(params[:user].keys)
  end

end
