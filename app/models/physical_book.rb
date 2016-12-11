class PhysicalBook < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :transactions
  validates :status, presence: true
  # validates :picture_url, presence: true
  validates :price, presence: true, numericality: true

  # Uploader of pictures
  mount_uploader :picture_url, PhotoUploader


  # include PgSearch
  # pg_search_scope :search, against: [:title, :author, :description],
  #   using: {tsearch: {dictionary: "english"}},
  #   associated_against: {
  #    genre: :name
  #   }


  # def self.text_search(query)
  #   if query.present?
  #     where("title @@ :q or description @@ :q or author @@ :q", q: query)
  #   end
  # end

  # advanced search
  searchkick
  PhysicalBook.reindex

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

  # @results.first.hits.each do | result |
  #   p result["_type"]
  # end

# @num = 0

#  @physical_books.first.hits.each do |x|
#    x[1]["_hits"]
#  end

  #     x.any? { |x| ["val1", "val2", "val3", "val4"].include?(x) }
# @physical_books.first.hits.first["_type"]


  # googlemaps coordinates
  def user_coordinates
    [user.latitude, user.longitude]
  end
end
