class PhysicalBook < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :transactions
  has_many :wishlist_items
  validates :status, presence: true
  # validates :picture_url, presence: true
  validates :price, presence: true, numericality: true

  # Uploader of pictures
  mount_uploader :picture_url, PhotoUploader

  # advanced search
  searchkick
  after_create { PhysicalBook.reindex }

  def self.text_search(query)

    @results = PhysicalBook.search "#{query}", index_name: [PhysicalBook.search, Genre.search, User.search]
    # fields: ["title^10", "author", "description", "isbn", "status", "price"]
    # if @results.first.instance_of? User && PhysicalBook
    #   @results.results.map do | result |
    #     PhysicalBook.where(id: result.id)
    #   end
    # elsif @results.first.instance_of? Genre && PhysicalBook
    #   @results.results.map do |result |
    #   PhysicalBook.where(id: result.id)
    # end
    # elsif @results.first.instance_of? User
    #   @results.results.map do | result |
    #     PhysicalBook.where(user_id: result.id)
    #   end
    # elsif @results.first.instance_of? Genre
    #   @results.results.map do |result |
    #     PhysicalBook.where(genre_id: result.id)
    #   end
    # elsif @results.first.instance_of? PhysicalBook
    #   @results = [@results]
    # else
    #   @results
    # end
  end

  # googlemaps coordinates
  def user_coordinates
    [user.latitude, user.longitude]
  end
end
