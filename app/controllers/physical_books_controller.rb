class PhysicalBooksController < ApplicationController
  def index

    # @physical_books=PhysicalBook.all

    @physical_books = PhysicalBook.text_search(params[:query])

  end

  def new
    @new_physical_book = PhysicalBook.new
  end

  def create
    @new_physical_book = PhysicalBook.new(physical_book_params)
    @new_physical_book.user = User.first
    if @new_physical_book.save!
      redirect_to physical_books_path
    else
      render :new
    end
  end

private
  def physical_book_params
    params.require(:physical_book).permit(:title, :author, :status, :cover_pic_url, :price)
  end


end
