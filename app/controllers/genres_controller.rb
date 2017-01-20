class GenresController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
    @physical_books = PhysicalBook.where(genre_id: @genre.id)
  end
end

