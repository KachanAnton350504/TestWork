class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :part_of_catalog
  has_and_belongs_to_many :users
end
