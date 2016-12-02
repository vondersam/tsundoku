class PhysicalBooksController < ApplicationController
  before_action :set_book, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]


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

  def show
  end

  private

  def physical_book_params
    params.require(:physical_book).permit(:title, :author, :description, :status, :cover_pic_url, :price)
  end

  def set_book
    @book = PhysicalBook.find(params[:id])
  end

end
