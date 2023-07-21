class Pet < ApplicationRecord
  belongs_to :user
 # has_many :Image, as: :imageable PARA USARLOS EN POLI MORFISMO CON URL
  has_many :matches 
  has_many_attached :images
end
