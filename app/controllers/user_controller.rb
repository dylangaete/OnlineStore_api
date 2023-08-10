class UserController < ApplicationController
  skip_before_action :authorize_request, only: :create

  def show
    render json: @current_user
  end

  def create
    user = User.new(user_params)
    
    if user.save
      render json: { message: 'Usuario creado exitosamente' }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
  