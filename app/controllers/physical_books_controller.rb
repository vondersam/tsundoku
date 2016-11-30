class PhysicalBooksController < ApplicationController
  def index
    # @physical_books=PhysicalBook.all
    @physical_books = PhysicalBook.text_search(params[:query])
  end

  def new
    @new_physical_book = PhysicalBook.new
  end

  def create
    @new_physical_book = PhysicalBook.new
    @new_physical_book.save
    redirect_to physical_books_path
  end




end
