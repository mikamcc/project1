class ImagesController < ApplicationController

#CREATE part 1 : blank form
  def new
  end
  #CREATE part 2: submit form
  def create




  #CREATE has no template
  #redirect to index page
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
  end

  def destroy
  end
end
