class PhotosController < ApplicationController
  PHOTOSTREAM_PER_PAGE = 10

  # GET /
  def index
    @photos = Photo.new_uploads.page(params[:page]).per(PHOTOSTREAM_PER_PAGE)
  end

  # GET /photos/1
  def show
    @photo = Photo.find(params[:id])
  end
end
