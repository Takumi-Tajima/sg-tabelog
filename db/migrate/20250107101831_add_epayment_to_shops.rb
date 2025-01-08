class AddEpaymentToShops < ActiveRecord::Migration[8.0]
  def change
    add_column :shops, :e_payment, :boolean, default: false, null: false
    add_column :shops, :card_payment, :boolean, default: false, null: false
    add_column :shops, :map_url, :string
    add_column :shops, :business_hours, :string, array: true, default: [], null: false
  end
end
