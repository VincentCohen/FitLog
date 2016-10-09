class Api::V1::BaseController < ApplicationController
  #before_action :parse_request, :authenticate_user_from_token!
  protect_from_forgery with: :null_session

  before_action :set_default_response_format

  def set_default_response_format
    request.format = :json
  end
end
