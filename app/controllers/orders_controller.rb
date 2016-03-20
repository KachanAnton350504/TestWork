class OrdersController < ApplicationController
  def index
    
  end

  def information
    @order = Order.find(params[:id])
  end

  def show  
    @orders = current_user.orders
  end

  def accept
    @order = Order.find(params[:id])
    if params[:acceptance] == 'yes'
      user = User.find(@order.user_id)
      book = Book.find(@order.book_id)
      user.books << book
      @order.destroy
      flash[:notice] = "Order was successfully accepted"
      redirect_to orders_list_path

    elsif params[:acceptance] == 'no'
      @order.destroy
      flash[:notice] = "Order was rejected"
      
      redirect_to orders_list_path
    end
  end
end
