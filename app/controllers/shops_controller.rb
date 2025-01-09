class ShopsController < ApplicationController
  before_action :set_shop, only: [:show]

  def index
    @shops = Shop.default_order
  end

  def show
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
