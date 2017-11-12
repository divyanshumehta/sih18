class AddRefereces < ActiveRecord::Migration[5.0]
  def change
    add_reference :medicine_counts, :shop, index: true
    add_reference :medicine_counts, :medicine, index: true
  end
end
