class CreateMedicineCounts < ActiveRecord::Migration[5.0]
  def change
    create_table :medicine_counts do |t|
      t.integer :count, null: false, default: 0
      t.timestamps
    end
  end
end
