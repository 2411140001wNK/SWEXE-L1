require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count", 1) do
      post books_url, params: {
        book: {
          title: "Ruby入門",
          author: "山田太郎",
          price: 2500,
          memo: "基礎テキスト"
        }
      }
    end

    assert_redirected_to books_url
  end

  test "should show book" do
    book = Book.create!(title: "Rails入門", author: "佐藤次郎", price: 3000, memo: "メモ")

    get book_url(book)
    assert_response :success
  end

  test "should get edit" do
    book = Book.create!(title: "Rails入門", author: "佐藤次郎", price: 3000, memo: "メモ")

    get edit_book_url(book)
    assert_response :success
  end

  test "should update book" do
    book = Book.create!(title: "Rails入門", author: "佐藤次郎", price: 3000, memo: "メモ")

    patch book_url(book), params: {
      book: {
        title: "Rails実践",
        author: "佐藤次郎",
        price: 3200,
        memo: "更新済み"
      }
    }

    assert_redirected_to book_url(book)
    assert_equal "Rails実践", book.reload.title
  end

  test "should destroy book" do
    book = Book.create!(title: "Rails入門", author: "佐藤次郎", price: 3000, memo: "メモ")

    assert_difference("Book.count", -1) do
      delete book_url(book)
    end

    assert_redirected_to books_url
  end
end
