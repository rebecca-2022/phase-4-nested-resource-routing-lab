class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Dog house not found" }, status: :not_found
  end

end