class SessionsController < ApplicationController
  def create
  end

  def new
      user = User.find_by(user_name: params[:user_name])
      session[:user_id] = user.id
      redirect_to '/'
  end

  def destroy
  end
end
