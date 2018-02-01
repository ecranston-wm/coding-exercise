class OrdersController < ApplicationController
  def index
    render(:index,
           locals: {
             orders: orders
           }
          )
  end

  private

  def orders
    Order.order(:delivery_date)
  end
end
