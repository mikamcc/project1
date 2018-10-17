class RestaurantsController < ApplicationController

#CREATE#################################################
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = @current_user

    if params[:file].present?
      response = Cloudinary::Uploader.upload params[:file]
      @restaurant.restaurant_image = response["public_id"]
    end

    @restaurant.save
    # redirect_to restaurant_path(@restaurant)
    #validation##############################################
       if @restaurant.update(restaurant_params)
            redirect_to new_restaurant_path(@restaurant)
            #it goes to edit page. why?
          else
            flash[:errors] = @restaurant.errors.full_messages
            render :edit
          end
    ##########################################################

    # @restaurant.save
    # redirect_to restaurant_path(@restaurant)

  end # create


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

    unless @restaurant.user == @current_user
         # redirect_to restaurants_path
         return
       end

    #cloudinary handle file upload######################
    if params[:file].present?
      response = Cloudinary::Uploader.upload params[:file]
      @restaurant.restaurant_image = response["public_id"]
    end

    @restaurant.update restaurant_params
######################################################
#validation
    if @restaurant.update(restaurant_params)
         redirect_to restaurant_path(@restaurant)
       else
         flash[:errors] = @restaurant.errors.full_messages
         render :edit
       end
###########################################
  end

  # DELETE ############################################
  def destroy
    restaurant = Restaurant.find params[:id]
    restaurant.destroy
    redirect_to(restaurants_path)
  end


  private
  def restaurant_params
    # This method ensures that the 'artist' key is set in the params hash, and then
    # makes sure only the permitted columns are taken from the form (and saved to the database)
    params.require(:restaurant).permit( :name, :summary, :location, :opening_hours, :vegan_option)
  end

end #class
