class Author < ActiveRecord::Base
  mount_uploader :foto, FotoUploader
  has_many :books
end
