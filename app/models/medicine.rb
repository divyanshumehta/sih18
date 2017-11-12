class Medicine < ApplicationRecord
  has_many :medicine_counts, dependent: :destroy
end
