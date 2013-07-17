class Admin::CamerasController < Admin::ApplicationController
  # GET /admin/cameras
  def index
    @cameras = Camera.all
  end

  # GET /admin/cameras/1
  def show
    @camera = Camera.find(params[:id])
  end

  # GET /admin/cameras/new
  def new
    @camera = Camera.new
  end

  # GET /admin/cameras/1/edit
  def edit
    @camera = Camera.find(params[:id])
  end

  # POST /admin/cameras
  def create
    @camera = Camera.new(camera_params)

    if @camera.save
      redirect_to [:admin, @camera], notice: 'Camera was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /admin/cameras/1
  def update
    @camera = Camera.find(params[:id])

    if @camera.update_attributes(camera_params)
      redirect_to [:admin, @camera], notice: 'Camera was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /admin/cameras/1
  def destroy
    @camera = Camera.find(params[:id])
    @camera.destroy

    redirect_to admin_cameras_url
  end

  private

  def camera_params
    params.require(:camera).permit(:name, :manufacturer_id)
  end
end
