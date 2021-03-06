class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user_id = params[:id]
    @user = User.find(@user_id)
    @articles = @user.articles
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  private

  def users_params
    params.require(:user).permit(:name, :email)
  end
end
