class Admin::ManufacturersController < Admin::ApplicationController
  # GET /admin/manufacturers
  def index
    @manufacturers = Manufacturer.all

    respond_to do |format|
      format.html
    end
  end

  # GET /admin/manufacturers/1
  def show
    @manufacturer = Manufacturer.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  # GET /admin/manufacturers/new
  def new
    @manufacturer = Manufacturer.new

    respond_to do |format|
      format.html
    end
  end

  # GET /admin/manufacturers/1/edit
  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  # POST /admin/manufacturers
  def create
    @manufacturer = Manufacturer.new(params[:manufacturer])

    respond_to do |format|
      if @manufacturer.save
        format.html { redirect_to [:admin, @manufacturer], notice: 'Manufacturer was successfully created.' }
      else
        format.html { render action: :new }
      end
    end
  end

  # PUT /admin/manufacturers/1
  def update
    @manufacturer = Manufacturer.find(params[:id])

    respond_to do |format|
      if @manufacturer.update_attributes(params[:manufacturer])
        format.html { redirect_to [:admin, @manufacturer], notice: 'Manufacturer was successfully updated.' }
      else
        format.html { render action: :edit }
      end
    end
  end

  # DELETE /admin/manufacturers/1
  def destroy
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer.destroy

    respond_to do |format|
      format.html { redirect_to admin_manufacturers_url }
    end
  end
end
