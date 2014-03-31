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
        @user = current_user
        flash[:notice] = "Thank you signing up!"
        redirect_to("/")
      else
        render(:new)
      end
  end

  def show
    # @user = User.find_by(id: params[:id])
    @user = current_user
    @client_id = ENV['GITHUB_TOKEN']

  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.update(user_params)
      redirect_to("/users/#{@user.id}")
    else
      render(:edit)
    end
  end

 private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :github_url,
      :picture_url,
      :personal_url,
      :password,
      :password_confirmation
      )
  end


end
