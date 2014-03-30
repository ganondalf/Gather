class SessionController < ApplicationController
  def new
  end

  def create
    #find the user by the given email
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      # if we found the user and they gave us the right password
      #store user_id in session
      session[:user_id] = user.id
      redirect_to("/users/#{user.id}")
    else
      render(:new)
    end
  end

  def destroy
    # we can set the session user_id to nil
    session[:user_id] = nil
    # or just reset the whole session
    # session_reset
    redirect_to(root_path)
    # same as redirect_to ("/")
  end

end
