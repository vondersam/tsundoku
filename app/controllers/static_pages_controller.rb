class StaticPagesController < ApplicationController
  def home
    @physical_books = PhysicalBook.all
  end
end
