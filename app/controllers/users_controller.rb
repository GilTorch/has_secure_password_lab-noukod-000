class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def create

    @user=User.create(users_params)
    puts @user.inspect

  end

  def users_params
     params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
