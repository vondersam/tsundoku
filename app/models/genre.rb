class Genre < ApplicationRecord
  has_many :physical_books, dependent: :restrict_with_exception
  validates :name, presence: true
end
