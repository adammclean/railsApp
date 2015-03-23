class UsersController < ApplicationController

  def show
    @user = User.find(User.first.id)
  end

  def new
  end


end
