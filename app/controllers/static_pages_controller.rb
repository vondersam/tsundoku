class StaticPagesController < ApplicationController
  def home
    @physical_books = PhysicalBook.all
    @result = request.location
  end
end
