class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  def after_sign_in_path(resource)
    protected_path
  end
end
