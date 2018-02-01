class IntegrationOrder < ApplicationRecord
  belongs_to :order

  validates_presence_of :export_state
end
