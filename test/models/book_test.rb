require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "title, author, and price are required and valid" do
    book = Book.new(title: "", author: "", price: -1)

    assert_not book.valid?
    assert_includes book.errors[:title], "can't be blank"
    assert_includes book.errors[:author], "can't be blank"
    assert_includes book.errors[:price], "must be greater than or equal to 0"
  end
end
