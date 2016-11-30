class PhysicalBooksController < ApplicationController
  def index
    @physical_books=PhysicalBook.all
  end

end
