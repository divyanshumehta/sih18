class Shop < ApplicationRecord
  has_many :medicine_count, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
