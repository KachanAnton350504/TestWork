class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :image
      t.integer :status
      t.string :vendor_code
      t.float :weight
      t.float :price
      t.string :series
      t.string :subjects
      t.integer :limit_age
      t.integer :time_status
      t.text :description_product
      t.text :description_book
      t.belongs_to :author, index: true
      t.belongs_to :part_of_catalog, index: true


      t.timestamps null: false
    end
  end
end
