class UserController < ApplicationController
  def index
    @orders = current_user.orders
  end

  def information
    @order = Order.find(params[:id])
  end


  def accept
    @order = Order.find(params[:id])
    if params[:acceptance] == 'yes'
      user = User.find(@order.user_id)
      book = Book.find(@order.book_id)
      user.books << book
      @order.destroy
    end
  end
end