class UsersController < ApplicationController
  before_action :set_book
  before_action :set_books

  def show
    @user = User.find(params[:id])
  end


  private
  def set_book
    @book = PhysicalBook.find(params[:physical_book_id])
  end

  def set_books
    @books = PhysicalBook.where(user_id: @book.id)
  end

end
