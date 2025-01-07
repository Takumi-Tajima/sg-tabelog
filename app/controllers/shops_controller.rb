class ShopsController < ApplicationController
  def index
    @shops = Shop.default_order
  end
end
