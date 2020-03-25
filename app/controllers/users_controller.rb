class UsersController < ApplicationController
  
  def index
    users = User.all
    render json: users, status: :ok
  end
  
  def create
    User.create(user_params)
    render json: { message: 'user created!' }, status: :created
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
