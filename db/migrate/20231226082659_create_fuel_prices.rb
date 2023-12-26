class CreateFuelPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :fuel_prices do |t|
      t.decimal :jet_a_self_service
      t.decimal :jet_a_full_service
      t.decimal :ll_self_service
      t.decimal :ll_full_service

      t.timestamps
    end
  end
end
