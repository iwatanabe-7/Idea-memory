class UsersController < ApplicationController
  def show
    if current_user
      @user = User.find(current_user.id)
    else
      render "/home/index"
    end
  end
end
