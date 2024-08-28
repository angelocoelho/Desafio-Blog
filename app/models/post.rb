class Post < ApplicationRecord
  validates :title, :author, :description, :note, presence: true

  validates(
    :note,
    numericality: {
      greater_than_or_equal_to: 0.0,
      less_than_or_equal_to: 10.0
    }
  )
end
