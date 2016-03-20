class BooksController < ApplicationController
 before_action :set_book, only: [:show, :edit, :buy_book]

  def order_book
    @order_book = Order.create :payment => params[:payment], :receipt => params[:receipt], :book_id => params[:book_id],:user_id => params[:user_id]
    flash[:notice] = "Order was made!"
    redirect_to books_path
  end

  def index
    @books = Book.all
  end

  def buy_book
    @order_book = Order.new
  end

  def show
  end


  private
    def set_book
      @book = Book.find(params[:id])
    end
end
