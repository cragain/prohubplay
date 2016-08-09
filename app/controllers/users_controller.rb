class UsersController < ApplicationController
  
  
  
  
  def index
    @users = User.all
  end
  

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
    params.require(:user).permit(:user_name, :other_staff_1, :other_staff_2, :other_staff_3, :other_staff_4, :approved)
  end
end
