module PhysicalBooksHelper
  def display_book_price(book)
    if book.price > 0
      "#{book.price}"
    else
      book.price
    end
  end
end
