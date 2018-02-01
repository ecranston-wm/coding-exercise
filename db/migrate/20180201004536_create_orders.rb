class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :order_number, null: false
      t.date :delivery_date, null: false
      t.string :destination_name, null: false
      t.string :item_name, null: false
      t.decimal :item_quantity_in_tons, null: false
      t.string :source_name, null: false
      t.string :order_status, null: false

      t.timestamps
    end
  end
end
