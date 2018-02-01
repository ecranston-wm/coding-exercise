FactoryBot.define do
  factory :order do
    order_number { Faker::Number.number(5) }
    delivery_date { Faker::Date.between(2.days.ago, 2.days.from_now) }
    destination_name { Faker::Company.name }
    item_name { Faker::Commerce.product_name }
    item_quantity_in_tons { Faker::Number.decimal(2, 2) }
    source_name { Faker::Company.name }
    order_status { ['unassigned', 'sourced', 'shipped', 'invoiced', 'canceled'].sample }
    after(:create) do |order|
      create :integration_order, order: order
    end
  end
end
