class Api::V1::UsersController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
    respond_to do |format|
      format.json { render json: @user }
      format.xml  { render  xml: @user }
    end
  end

  def index
    @users = User.all
    respond_to do |format|
      format.json { render json: @users }
      format.xml  { render  xml: @users }
    end
  end
end