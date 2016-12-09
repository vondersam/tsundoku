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


  def self.text_search(query)
    if query.present?
      where("title @@ :q or description @@ :q or author @@ :q", q: query)

    end
    @query = query
  end
  def user_coordinates
  [user.latitude, user.longitude]
  end


end
