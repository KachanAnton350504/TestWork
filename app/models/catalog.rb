class Catalog < ActiveRecord::Base
  has_and_belongs_to_many :part_of_catalogs 
end
