require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = Book.create!(title: "Rails入門", author: "山田", price: 2000, memo: "memo")
  end

  test "should get index" do
    get books_url
    assert_response :success
    assert_select "h1", "書籍一覧"
  end

  test "should get show" do
    get book_url(@book)
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end
end
