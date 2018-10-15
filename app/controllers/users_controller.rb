class UsersController < ApplicationController
  # CREATE ##########################################
  def new
    @user = User.new
  end

  def create
    user = User.create user_params
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
      summary:params[:summary],
      location:params[:location],
      opening_hours:params[:opening_hours],
      vegan_option:params[:vegan_option]
    )
    redirect_to(restaurant_path(restaurant.id))
  end

  #DELETE###########################################
  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
