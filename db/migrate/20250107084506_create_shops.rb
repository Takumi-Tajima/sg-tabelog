class CreateShops < ActiveRecord::Migration[8.0]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :place_id, null: false
      t.string :map_url
      t.string :business_hours, array: true, default: [], null: false
      t.boolean :e_payment, default: false, null: false
      t.boolean :card_payment, default: false, null: false

      t.timestamps
    end
  end
end
