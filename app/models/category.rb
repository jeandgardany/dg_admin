class Category < ApplicationRecord

  validates :code, :name, presence: true
  validates :code, uniqueness: true

end
