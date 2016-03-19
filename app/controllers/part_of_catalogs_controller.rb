class PartOfCatalogsController < ApplicationController
  before_action :set_part_of_catalog, only: [:show, :edit, :update, :destroy]

  # GET /part_of_catalogs
  # GET /part_of_catalogs.json
  def index
    @part_of_catalogs = PartOfCatalog.all
  end

  # GET /part_of_catalogs/1
  # GET /part_of_catalogs/1.json
  def show
  end

  # GET /part_of_catalogs/new
  def new
    @part_of_catalog = PartOfCatalog.new
  end

  # GET /part_of_catalogs/1/edit
  def edit
  end

  # POST /part_of_catalogs
  # POST /part_of_catalogs.json
  def create
    @part_of_catalog = PartOfCatalog.new(part_of_catalog_params)

    respond_to do |format|
      if @part_of_catalog.save
        format.html { redirect_to @part_of_catalog, notice: 'Part of catalog was successfully created.' }
        format.json { render :show, status: :created, location: @part_of_catalog }
      else
        format.html { render :new }
        format.json { render json: @part_of_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part_of_catalogs/1
  # PATCH/PUT /part_of_catalogs/1.json
  def update
    respond_to do |format|
      if @part_of_catalog.update(part_of_catalog_params)
        format.html { redirect_to @part_of_catalog, notice: 'Part of catalog was successfully updated.' }
        format.json { render :show, status: :ok, location: @part_of_catalog }
      else
        format.html { render :edit }
        format.json { render json: @part_of_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_of_catalogs/1
  # DELETE /part_of_catalogs/1.json
  def destroy
    @part_of_catalog.destroy
    respond_to do |format|
      format.html { redirect_to part_of_catalogs_url, notice: 'Part of catalog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part_of_catalog
      @part_of_catalog = PartOfCatalog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def part_of_catalog_params
      params.require(:part_of_catalog).permit(:title, :description)
    end
end
