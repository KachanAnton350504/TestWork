class CreateJoinTableCatalogPartOfCatalog < ActiveRecord::Migration
  def change
    create_join_table :catalogs, :part_of_catalogs do |t|
      t.index :catalog_id
      t.index :part_of_catalog_id
    end
  end
end
