class UsersController < ApplicationController

def new
  @user = User.new
end

def create
  @user = User.create(user_params)
  if @user.valid?
    redirect_to user_path(@user)
  else
    flash[:notice] = @user.errors.full_messages.join(", ")
    redirect_to new_user_path
  end
end

def destroy
  @user = Usere.find(params[:id])
  @user.destroy
end




private

def user_params
  params.require(:user).permit(:name, :password)
end


end
