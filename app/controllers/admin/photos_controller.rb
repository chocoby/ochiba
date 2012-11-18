class Admin::PhotosController < Admin::ApplicationController
  # GET /admin/photos
  def index
    @photos = Photo.all
  end

  # GET /admin/photos/1
  def show
    @photo = Photo.find(params[:id])
  end

  # GET /admin/photos/new
  def new
    @photo = Photo.new
  end

  # GET /admin/photos/1/edit
  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /admin/photos
  def create
    @photo = Photo.new(params[:photo])

    @photo.assign_exif
    if @photo.save
      redirect_to [:admin, @photo], notice: 'Photo was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /admin/photos/1
  def update
    @photo = Photo.find(params[:id])

    if @photo.update_attributes(params[:photo])
      redirect_to [:admin, @photo], notice: 'Photo was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /admin/photos/1
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to admin_photos_url
  end
end
