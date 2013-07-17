class Admin::ManufacturersController < Admin::ApplicationController
  # GET /admin/manufacturers
  def index
    @manufacturers = Manufacturer.all
  end

  # GET /admin/manufacturers/1
  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  # GET /admin/manufacturers/new
  def new
    @manufacturer = Manufacturer.new
  end

  # GET /admin/manufacturers/1/edit
  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  # POST /admin/manufacturers
  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      redirect_to [:admin, @manufacturer], notice: 'Manufacturer was successfully created.'
    else
      render action: :new
    end
  end

  # PUT /admin/manufacturers/1
  def update
    @manufacturer = Manufacturer.find(params[:id])

    if @manufacturer.update_attributes(manufacturer_params)
      redirect_to [:admin, @manufacturer], notice: 'Manufacturer was successfully updated.'
    else
      render action: :edit
    end
  end

  # DELETE /admin/manufacturers/1
  def destroy
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer.destroy

    redirect_to admin_manufacturers_url
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name)
  end
end
