class IssuesController < ApplicationController

  def index
    @git_name = current_user.github_handle
    @response = HTTParty.get("https://api.github.com/users/#{@git_name}/gists",
              :headers => {"Authorization" => "token #{session[:api_token]}",
                          "User-Agent" => "ganondalf-gather"})

  end

end
