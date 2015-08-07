class ApiController < ApplicationController

  skip_before_action :verify_authenticity_token

  private

  def authenticated?
    authenticate_or_request_with_http_basic {|username, encrypted_password| User.where( username: username, encrypted_password: encrypted_password).present? }
  end 

end 