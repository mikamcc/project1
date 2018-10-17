class UsersController < ApplicationController
  # CREATE ##########################################
  def new
    @user = User.new
  end

  def create
    # user = User.create user_params
    # session[:user_id] = user.id
    # # raise "hell"
    # redirect_to restaurants_path


    #This part is from tunr
    user = User.create user_params #strong params
    #Account created succesfuly

    if user.persisted?
      session[:user_id] = user.id
      redirect_to user_path(user) #go to the show page for this user
    else
      #Accoutn not created: show error

      #set a flash key to show on the next page: it will be an array of error strings
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path #/users/new, show the form again (with errors)
    end
    # tunr part ends
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
