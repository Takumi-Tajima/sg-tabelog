class CreateShops < ActiveRecord::Migration[8.0]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :place_id, null: false

      t.timestamps
      t.index :place_id, unique: true
    end
  end
end
