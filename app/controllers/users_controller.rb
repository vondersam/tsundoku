class UsersController < ApplicationController
  before_action :set_book

  def show
    @user = User.find(params[:id])
  end

  private
  def set_book
    @book = PhysicalBook.find(params[:physical_book_id])
  end
end
