require 'rails_helper'

feature 'user views a list of orders' do
  context 'when there are no orders' do
    scenario 'they see no orders' do
      visit root_path

      expect(page).to have_content 'No orders found'
    end
  end

  context 'when there are orders' do
    given!(:orders) do
      create_list(:order, 3)
    end

    scenario 'they see the orders' do
      visit root_path

      orders.each do |order|
        within(".order-#{order.id}") do
          expect(page).to have_content(order.order_number)
          expect(page).to have_content(order.delivery_date)
          expect(page).to have_content(order.item_name)
          expect(page).to have_content(order.destination_name)
          expect(page).to have_content(order.source_name)
          expect(page).to have_content(order.item_quantity_in_tons)
          expect(page).to have_content(order.order_status)
          expect(page).to have_content(order.integration_order.export_state)
        end
      end
    end
  end
end
