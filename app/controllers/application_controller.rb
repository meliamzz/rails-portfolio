class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token, only: [:create]
  before_action :authenticate_user!
end
