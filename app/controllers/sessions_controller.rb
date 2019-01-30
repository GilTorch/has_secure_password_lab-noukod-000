class SessionsController < ApplicationController

  def new
  end

  def create
    puts "SESSION CREATE ACTION!"
    puts params.inspect
    @user=User.find_by(name:params[:user][:name])


    if @user && @user.authenticate(params[:user][:password])
      session[:user_id]=@user.id
    end
  end

end
