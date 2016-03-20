class RemoveCatalogIdOfPartOfCatalog < ActiveRecord::Migration
  def change
    remove_column :part_of_catalogs, :catalog_id, :integer

  end
end
