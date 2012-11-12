# coding: utf-8
class PhotosController < ApplicationController
  # GET /
  def index
    @photos = Photo.all
  end
end
