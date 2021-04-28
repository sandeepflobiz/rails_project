module Response
  def self.customSuccessResponse(message,data)
    msg = {:status_code=>200,:message=>message,:data=>data}
    return msg
  end

  def sayhi
    puts "hi"
  end

  def self.customErrorResponse(message,data)
    msg = {:status_code=>400,:message=>message,:data=>data}
    return msg
  end
end
