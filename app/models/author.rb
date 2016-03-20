class Author < ActiveRecord::Base
  has_attached_file :foto
  has_many :books
end
