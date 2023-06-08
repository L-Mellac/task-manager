class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # def after_sign_in_path_for(resource)
  #   generate_days_path # your path
  # end

end
