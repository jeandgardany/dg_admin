class Comission < ApplicationRecord
  enum status: [:pending, :payd]
  belongs_to :sale
  belongs_to :user
end
