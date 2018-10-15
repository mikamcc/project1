class RestaurantsController < ApplicationController

#CREATE#################################################
  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(restaurant_params)
  end


# READ ############################################
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find params[:id]
  end

  #UPDATE ############################################
  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    @restaurant = Restaurant.find params[:id]
    redirect_to(restaurants_path(restaurant.id))
  end

  # DELETE ############################################
  def destroy
    restaurant = Restaurant.find params[:id]
    restaurant.destroy

    redirect_to(restaurants_path)
  end
end
