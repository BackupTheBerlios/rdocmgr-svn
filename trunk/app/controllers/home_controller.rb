class HomeController < ApplicationController
  def index
    session[:project_id] = 1
  end

end
