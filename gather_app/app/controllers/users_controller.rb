class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        # flash[:welcome]
        redirect_to(root_path)
      else
        # flash[:error]
        render(:new)
      end
  end

  def show
    @user = current_user
  end

 private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :github_url,
      :pivotal_url,
      :personal_url,
      :password,
      :password_confirmation
      )
  end


end
