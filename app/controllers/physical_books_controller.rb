class PhysicalBooksController < ApplicationController
  before_action :set_book, only: [:show, :destroy]
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

  # def update
  #   # if
  #    @new_physical_book.update(set_book)
  #     redirect_to root_path
  #   # else
  #     # render :edit
  #   # end
  # end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  private

  def physical_book_params
    params.require(:physical_book).permit(:title, :author, :description, :status, :cover_pic_url, :price)
  end

  def set_book
    @book = PhysicalBook.find(params[:id])
  end

end
