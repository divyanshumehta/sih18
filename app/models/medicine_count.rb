class MedicineCount < ApplicationRecord
  belongs_to :shop, counter_cache: true
  belongs_to :medicine, counter_cache: true
end
