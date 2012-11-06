class Admin::ApplicationController < ApplicationController
  before_filter :authenticate_user!

  # ログインを必須とする
  def authenticate_user!
    return redirect_to new_user_session_path unless signed_in?
  end
end
