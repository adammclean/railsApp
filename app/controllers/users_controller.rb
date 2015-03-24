class UsersController < ApplicationController

  def show
    @user = User.find(User.first.id)
    debugger
  end

  def new
  end


end
