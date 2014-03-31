class IssuesController < ApplicationController

  def index

    @response = HTTParty.get('https://api.github.com/repos/davidmccoy/gather/issues',
              :headers => {"Authorization" => "token #{session[:api_token]}",
                          "User-Agent" => "ganondalf-gather"})
  end

end
