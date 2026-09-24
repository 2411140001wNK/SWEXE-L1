class Book < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :author, presence: true
  validates :price, presence: true,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
