class MovieAlbum < ApplicationRecord
  #attr_accessible :image, :images
  has_many_attached :images
end
