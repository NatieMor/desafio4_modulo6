class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  enum :role, [:normal, :ejecutivo, :admin]
  has_many :pets
 # has_many :Image, as: :imageable PARA USARLOS EN POLI MORFISMO CON URL
  has_many :matches
  has_many_attached :images
  #accepts_nested_attributes_for :images CUANDO SE USA CON EL FORMULARIO PARA URL
end
