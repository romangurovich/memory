class UsersController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @users = User.order(:first_name).page params[:page]
  end

  def dashboard
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    @user.assign_attributes(user_params)

    if @user.save
      flash.notice = "Updated your profile successfully"
      redirect_to root_path
    else
      flash.alert = "Couldn't update your profile"
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
