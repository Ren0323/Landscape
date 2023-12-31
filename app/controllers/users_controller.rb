class UsersController < ApplicationController
  def index
    @users=User.all
  end

  def show
    @user = User.find(params[:id])
    @users = User.all
  end

  def edit
    @user=User.find(params[:id])
    if @user.id !=current_user.id
      redirect_to user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render:edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
