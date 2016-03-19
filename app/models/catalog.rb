class Catalog < ActiveRecord::Base
  has_many :part_of_catalogs 
end
