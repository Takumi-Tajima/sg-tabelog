class Shop < ApplicationRecord
  scope :default_order, -> { order(:id) }
end
