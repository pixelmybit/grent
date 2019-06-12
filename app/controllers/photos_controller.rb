class PhotosController < ApplicationController
  def create
    @photo = Photo.new(photo_params)
    @genius = Genius.find(params[:genius_id])
    @photo.genius = @genius
    if @photo.save
      redirect_to new_genius_path
    else
      render 'geniuses/show'
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:photo)
  end
end
