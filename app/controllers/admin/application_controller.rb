class Admin::ApplicationController < ApplicationController
  before_action :authenticate_user!

  layout 'admin'

  # ログインを必須とする
  def authenticate_user!
    return redirect_to new_user_session_path unless signed_in?
  end
end
