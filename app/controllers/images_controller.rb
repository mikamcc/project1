class ImagesController < ApplicationController

#CREATE part 1 : blank form
  def new
  end
  #CREATE part 2: submit form
  def create

    @image = Image.new title: params[:title]

    @image.user_id = @current_user.id
    @image.restaurant_id = params[:id]
    @image.save
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
