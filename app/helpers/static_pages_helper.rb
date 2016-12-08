module StaticPagesHelper
  def display_book_price(book)
    if book.price > 0
      "#{book.price}"
    else
      "-"
    end
  end

  def brussels_coordinates
    [50.85045, 4.34878]
  end

  def count_users_in_area(coordinates)
    User.near(coordinates, 10).length
  end
end
