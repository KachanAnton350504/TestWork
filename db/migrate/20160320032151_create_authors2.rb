class CreateAuthors2 < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :foto
      t.text :biography

      t.timestamps null: false
      end
  end
end
