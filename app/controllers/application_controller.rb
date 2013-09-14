class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :signed_in?

  def current_user
    @current_user = session[:username]
  end

  def current_user=(username)
    session[:username] = username
  end

  def signed_in?
    !!current_user
  end

  def sign_out
    session.delete(:username)
  end
end
