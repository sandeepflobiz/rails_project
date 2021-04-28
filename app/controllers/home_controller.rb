class HomeController < ApplicationController

  def customResponse(message,data)
    msg = {:message=>message,:data=>data}
    return msg
  end

  def index
    puts "home page has been called"
    msg = customResponse("index page",nil)
    render :json=>msg
  end

  def about
    puts "about page has been called"
    msg = customResponse("about page",nil)
    render :json => msg
  end

end
