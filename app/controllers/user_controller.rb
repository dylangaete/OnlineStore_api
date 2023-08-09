class UserController < ApplicationRecord
  def show
    render json: @current_user
  end
  