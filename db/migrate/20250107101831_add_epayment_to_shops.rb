class AddEpaymentToShops < ActiveRecord::Migration[8.0]
  def change
    add_column :shops, :e_payment, :boolean, default: false, null: false
    add_column :shops, :card_payment, :boolean, default: false, null: false
  end
end
