class Product < ApplicationRecord
  belongs_to :category
  enum status: [:active, :inactive]
  enum promotion: [:no, :yes]
  has_many :product_quantities
  mount_uploader :photo, PhotoUploader
  mount_uploaders :files, FilesUploader
  #has_many_attached :files
  # for deletion
  attr_accessor :remove_files
  after_save do
    Array(remove_files).each { |id| files.find_by_id(id).try(:purge) }
  end
  validates :code, :name, :price, :status, presence: true
  validates :code, uniqueness: true

end
