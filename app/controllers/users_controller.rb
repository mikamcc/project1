class UsersController < ApplicationController
  # CREATE ##########################################
  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    session[:user_id] = user.id
    # raise "hell"
    redirect_to restaurants_path
  end


  # READ ############################################
  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
    @restaurants = @user.restaurants
  end

  # UPDATE ##################################################
  def edit
  end

  def update
    restaurant = Restaurant.find params[:id]
    restaurant.update(
      name:params[:name],
      email:params[:email],
      password:params[:password]
    )
    redirect_to(user_path)
  end

  #DELETE###########################################
  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
