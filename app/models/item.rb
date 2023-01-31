class Item < ApplicationRecord
  after_initialize :set_default_quantity
  belongs_to :product
  belongs_to :cart
  # belongs_to :order

  def set_default_quantity
    self.quantity ||= 1
  end
  def total_price
    self.quantity * self.product.price
  end
end
