class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  def customSuccessResponse(message,data)
    msg = {:status_code=>200,:message=>message,:data=>data}
    return msg
  end

  def customErrorResponse(message,data)
    msg = {:status_code=>400,:message=>message,:data=>data}
    return msg
  end

  def getAll
    users = User.all
    puts "all users object has been fetched"
    msg = customSuccessResponse("all users data has been fetched",users)
    render :json=>msg
  end

  def getUser
    begin
      user = User.find(params[:id])
      msg = customSuccessResponse("user data has been fetched",user)
      render :json=>msg
    rescue =>error
      msg = customErrorResponse(error,nil)
      render :json=>msg
    end
  end

  def createUser
    begin
      user = User.new
      user.name = params[:name]
      user.email = params[:email]
      user.save

      msg = customSuccessResponse("new default user has been created",user)
      render :json=>msg
    rescue =>error
      msg = customErrorResponse("Something went wrong",error)
      render :json=>msg
    end
  end

  def updateUser
    begin
      user = User.find(params[:id])
      user.name = params[:name]
      user.email = params[:email]
      user.save

      msg = customSuccessResponse("user details has been updated",user)
      render :json=>msg
    rescue =>error
      msg = customErrorResponse("Something went wrong",error)
      render :json=>msg
    end
  end

  def deleteUser
    begin
      user = User.find(params[:id])
      user.delete
      msg = customSuccessResponse("user details has been deleted",user)
      render :json=>msg
      rescue =>error
        msg = customErrorResponse("Something went wrong",error)
        render :json=>msg
    end
  end

end
