class ApiController < ApplicationController

  skip_before_action :verify_authenticity_token

  private

  def authenticated?
    authenticate_or_request_with_http_basic {|username, token| User.where( username: username, token: token).present? }
  end 

end 