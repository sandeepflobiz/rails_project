require_relative "../utils/response.rb"
class FriendController < ApplicationController
  skip_before_action :verify_authenticity_token
  include Response

  def getAllFriends
    @friends = Friend.all
    render :json=>{:message=>"SUCCESS",:data=>@friends}
  end

  def createFriend
    puts "create friend api"
    begin
      @user_id = params[:id]
      friend = Friend.new
      friend.user_id = @user_id.to_i
      friend.active = true
      if friend.save
        msg = Response.customSuccessResponse("a new friend has been created",friend)
        render :json=>msg
      else
        msg = Response.customErrorResponse("friend cannot be created",nil)
        render :json=>msg
      end
    rescue =>error
      msg = Response.customErrorResponse(error,nil)
      render :json=>msg
    end
  end


end
