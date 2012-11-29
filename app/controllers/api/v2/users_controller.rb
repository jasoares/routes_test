class Api::V2::UsersController < ApplicationController
  def show
    @user = User.find_by_id(1)
    render json: @user
  end

  def index
    @users = User.all[0..2]
    render json: @users
  end
end
