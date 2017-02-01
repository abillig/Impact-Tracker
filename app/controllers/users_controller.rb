class UsersController < ApplicationController

  def new
    if current_user
      redirect_to root_url
    else
      @user = User.new
      @publications = Publication.all
      @positions = Position.all
    end
  end

  def create
    if params[:user][:password] != params[:user][:password_confirmation]
      flash[:notice] = "Passwords must match."
      redirect_to new_user_path
    elsif params[:user][:publication_id].blank? || params[:user][:position_id].blank?
      flash[:notice] = "Please select a valid publication and position."
      redirect_to new_user_path
    else
        # Reporter(id: integer, name: string, bio: string, created_at: datetime, updated_at: datetime, image: string, publication_id: integer)
        @user = User.create(user_params)
        #removing mailer until it is fixed in development.
        # AdminMailer.new_user(User.where(name: "Avram Billig").first, @user).deliver_later
        session[:user_id] = @user.id
        if @user.title == "Reporter"
          @reporter = Reporter.create(name: params[:user][:name], bio: params[:user][:bio])
          @reporter.publication = @user.publication
          @reporter.save
        end
        redirect_to root_url
    end
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
