class SellersController < ApplicationController
  def index
  end

  def show
    @orders = Order.all
  end
end
