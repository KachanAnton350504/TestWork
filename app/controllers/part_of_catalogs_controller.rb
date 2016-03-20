class PartOfCatalogsController < ApplicationController
  before_action :set_part_of_catalog, only: [:show]

  def index
    @part_of_catalogs = PartOfCatalog.all
  end

  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part_of_catalog
      @part_of_catalog = PartOfCatalog.find(params[:id])
    end
end
