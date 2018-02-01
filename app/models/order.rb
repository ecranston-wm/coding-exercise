class Order < ApplicationRecord
  has_one :integration_order

  validates_presence_of :order_number,
                        :delivery_date,
                        :destination_name,
                        :item_name,
                        :item_quantity_in_tons,
                        :source_name,
                        :order_status
end
