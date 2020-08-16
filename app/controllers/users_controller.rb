class UsersController < ApplicationController


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
