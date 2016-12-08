module StaticPagesHelper
   def display_book_price(book)
    if book.price > 0
      "#{book.price}"
    else
      "-"
    end
  end
end
