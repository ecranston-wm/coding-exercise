# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
orders = 10.times do
  Order.create(

  )
end

def generate_order
  Order.create(
    order_number: '123',
    delivery_date: Time.now,
    destination_item_name: 'Whey Liquid DCCA',
    item_price_cents: '25',
    item_quantity: '24.0',
    source_name: 'Western Milling - Liquid Direct',
    order_status: 'shipped'
  )
end

def generate_integration_order(order)
  IntegrationOrder.create(
    order: order,
    export_state: 'exported'
  )
end
