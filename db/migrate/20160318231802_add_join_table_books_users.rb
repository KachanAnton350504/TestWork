class AddJoinTableBooksUsers < ActiveRecord::Migration
  def change
    create_join_table :books, :users do |t|
      t.index :book_id
      t.index :user_id
    end
  end
end
