require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { description_book: @book.description_book, description_product: @book.description_product, image: @book.image, limit_age: @book.limit_age, name: @book.name, price: @book.price, series: @book.series, status: @book.status, subjects: @book.subjects, time_status: @book.time_status, vendor_code: @book.vendor_code, weight: @book.weight }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { description_book: @book.description_book, description_product: @book.description_product, image: @book.image, limit_age: @book.limit_age, name: @book.name, price: @book.price, series: @book.series, status: @book.status, subjects: @book.subjects, time_status: @book.time_status, vendor_code: @book.vendor_code, weight: @book.weight }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
