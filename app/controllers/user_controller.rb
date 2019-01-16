class UserController < ApplicationController
  def create

    User.find_or_create(email: params[:email])
  end
end
