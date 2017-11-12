class CreateMedicines < ActiveRecord::Migration[5.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.text :alternatives, array: true, default: []
      t.timestamps
    end
  end
end
