class UsersController < ApplicationController
  def new
    @user = User.new(user_params)
  end



end
