class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.order("name")
  end
  def new
    @user = User.new
  end

  def show
    @user = User.friendly.find(params[:id])
    unless @user == current_user
      redirect_to root_path, :alert => "Access denied."
    end
  end
end
