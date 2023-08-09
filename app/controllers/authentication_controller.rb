class AuthenticationController < ApplicationController
  require 'jwt'

  def login
    
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      token = encode_token(user_id: user.id)
      render json: { token: token }, status: :ok
    else
      render json: { error: "Nombre de usuario o contraseña incorrectos" }, status: :unauthorized
    end
  end

  private

  def encode_token(payload)
    JWT.encode(payload, ENV['MY_SECRET_KEY'])
  end
end