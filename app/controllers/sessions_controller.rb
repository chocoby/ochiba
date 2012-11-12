# coding: utf-8
class SessionsController < ApplicationController
  # GET /login
  def new
    self.current_user
  end

  # POST /login
  def create
    auth = Ochiba::Auth.authenticate(params[:username], params[:password])
    return redirect_to new_user_session_path unless auth

    self.current_user = params[:username]

    redirect_to admin_path
  end

  # DELETE /logout
  def destroy
    self.sign_out
    redirect_to new_user_session_path
  end
end
