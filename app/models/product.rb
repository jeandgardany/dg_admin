class Product < ApplicationRecord
  belongs_to :category
  enum status: [:active, :inactive]
  has_many :product_quantities
  mount_uploader :photo, PhotoUploader
end
