class UsersController < ApplicationController

def index
  @user = User.all
end

def show
  @user = User.new
end

def new
  @user = User.new
end


def create
    @user = User.new(user_params)

    if @user.save
        redirect_to user_path(@user)
      else
        flash[:alert] = "Something went wrong."
        render :new
    end
end


end
