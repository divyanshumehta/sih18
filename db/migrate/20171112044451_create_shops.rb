class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.text :name, null: false, default: ""
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
