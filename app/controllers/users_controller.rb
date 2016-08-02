class UsersController < ApplicationController

def create
 
end

def show
  @user = User.find(params[:id])
end

def edit
    @user = User.find(params[:id])
end



def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
    flash[:success] = "Profile Updated Successfully"
    redirect_to @user
    else
      render 'show'
    end
  end


private

  def user_params
    params.require(:user).permit(:user_name)
  end
end
