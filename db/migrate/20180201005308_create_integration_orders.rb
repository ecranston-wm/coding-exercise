class CreateIntegrationOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :integration_orders do |t|
      t.integer :order_id, null: false
      t.string :export_state, null: false
      t.string :integration_order_number

      t.timestamps
    end
  end
end
