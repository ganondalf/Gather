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
    session[:api_token] = nil
    # or just reset the whole session
    reset_session
    redirect_to(root_path)
    # same as redirect_to ("/")
  end

  def github_auth
    response_code = params[:code]

    result = HTTParty.post('https://github.com/login/oauth/access_token',
                          :query => {:client_id     => ENV['GITHUB_TOKEN'],
                                     :client_secret => ENV['GITHUB_SECRET'],
                                     :code          => response_code,
                                     :accept        => :json})
    # result from github = 'access_token=XXXXX55&scope=user%3Aemail&token_type=bearer'
    # contains 3 {key => value} pairs: {'access_token' => 'XXX', 'scope' => user%3Aemail,'token_type' => 'bearer'}
    # create a custom parse in new method (see below)

    session[:api_token] = parse(result)["access_token"]
    # Carolyn: a8410e3fdb9c813b10b4f571b45be6250115d551
    # Max/David: 6009030e65de59e725bbd335cc58d453dc9c8bd0

    redirect_to('/issues')
  end

  def parse(result)
    response1 = {}
    result.split('&').each do |chunk|
      key, value = chunk.split('=')      # set 2 variables at once with comma
      response1[key] = value              # split returns array of 2 elements
    end
    response1
  end

end
