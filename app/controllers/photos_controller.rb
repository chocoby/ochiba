# coding: utf-8
class PhotosController < ApplicationController
  # GET /
  def index
    @photos = Photo.new_uploads.all
  end
end
