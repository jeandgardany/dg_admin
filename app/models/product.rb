class Product < ApplicationRecord
  belongs_to :category
  enum status: [:active, :inactive]
  has_many :product_quantities
  mount_uploader :photo, PhotoUploader
  
  validates :code, :name, :price, :status, presence: true
  validates :code, uniqueness: true

end
