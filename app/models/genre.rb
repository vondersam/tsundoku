class Genre < ApplicationRecord
  has_many :physical_books, dependent: :restrict_with_exception
  validates :name, presence: true

  # advanced search
  def self.text_search(query)
  if query.present?
      Genre.search "#{query}"
    end
  end

  searchkick
  # after_create { Genre.reindex }
end
