# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def generate_order
  Order.create(
    order_number: Faker::Number.number(5),
    delivery_date: Faker::Date.between(2.days.ago, 2.days.from_now),
    destination_name: Faker::Company.name,
    item_name: Faker::Commerce.product_name,
    item_quantity_in_tons: Faker::Number.decimal(2, 2),
    source_name: Faker::Company.name,
    order_status: ['unassigned', 'sourced', 'shipped', 'invoiced', 'canceled'].sample
  )
end

def generate_integration_order(order)
  IntegrationOrder.create(
    order: order,
    export_state: ['uninitiated', 'queued', 'exported', 'error'].sample
  )
end

orders = Array.new(20) do |i|
  generate_order
end

orders.each {|order| generate_integration_order(order) }
