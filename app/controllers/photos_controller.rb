class PhotosController < ApplicationController
  PHOTOSTREAM_PAGE_PER = 10

  # GET /
  def index
    @photos = Photo.new_uploads.page(params[:page]).per(PHOTOSTREAM_PAGE_PER)
  end
end
