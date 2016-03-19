class PartOfCatalog < ActiveRecord::Base
  belongs_to :catalog
  has_many :books
end
