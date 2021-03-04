class UsersController < ApplicationController
  protect_from_forgery

  def index
    @users = User.order(:last_name)
    authorize @users
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end
end
