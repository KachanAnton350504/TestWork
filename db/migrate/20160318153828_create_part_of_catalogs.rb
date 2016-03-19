class CreatePartOfCatalogs < ActiveRecord::Migration
  def change
    create_table :part_of_catalogs do |t|
      t.string :title
      t.text :description
      t.belongs_to :catalog, index: true

      t.timestamps null: false
    end
  end
end
