class Admin::LensesController < Admin::ApplicationController
  # GET /admin/lenses
  def index
    @lenses = Lens.all
  end

  # GET /admin/lenses/1
  def show
    @lens = Lens.find(params[:id])
  end

  # GET /admin/lenses/new
  def new
    @lens = Lens.new
  end

  # GET /admin/lenses/1/edit
  def edit
    @lens = Lens.find(params[:id])
  end

  # POST /admin/lenses
  def create
    @lens = Lens.new(params[:lens])

    if @lens.save
      redirect_to [:admin, @lens], notice: 'Lens was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /admin/lenses/1
  def update
    @lens = Lens.find(params[:id])

    if @lens.update_attributes(params[:lens])
      redirect_to [:admin, @lens], notice: 'Lens was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /admin/lenses/1
  def destroy
    @lens = Lens.find(params[:id])
    @lens.destroy

    redirect_to admin_lenses_url
  end
end
