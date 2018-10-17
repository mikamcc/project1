class ImagesController < ApplicationController

#CREATE part 1 : blank form
  def new
  end
  #CREATE part 2: submit form
  def create

    @image = Image.new title: params[:title]
    #add user assosiation
    @image.user_id = @current_user
    @image.restaurant_id = params[:id]

    if params[:file].present?
      response = Cloudinary::Uploader.upload params[:file]
      @image.image = response["public_id"]
      @image.save
    else
      #If user doesn't provide the image
      flash[:error] = "Please provide the image"
    end

    redirect_to restaurant_path(params[:id])
  end

  #READtype 1: Index for all itmes in 'planets'
  def index
    @images = Image.all
  end

  #READ type 2: show page, details for one item.
  def show
    @image = Image.find params[:id]
  end

  def edit
  end

  def update
    if params[:file].present?
      response = Cloudinary::Uploader.upload params[:file]
      @restaurant.restaurant_image = response["public_id"]
    end
  end

  def destroy
  end
end
