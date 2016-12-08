class PhysicalBooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show] # check if :edit, :update, are needed
  before_filter :require_permission, only: :destroy

  def index
    # @physical_books=PhysicalBook.all
    @physical_books = PhysicalBook.text_search(params[:query])
  end

  def new
    @new_physical_book = PhysicalBook.new
  end

  def create
    @new_physical_book = PhysicalBook.new(physical_book_params)
    @new_physical_book.user = current_user
    if @new_physical_book.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @physical_book = PhysicalBook.find(params[:id])
    @genre = @physical_book.genre

    @hash = Gmaps4rails.build_markers(@physical_book.user) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow render_to_string(partial: "static_pages/user_map_box", locals: { user: user})
    end
  end

  def edit
  end

  def update
    if @book.update(physical_book_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  private

  def physical_book_params
    params.require(:physical_book).permit(:title, :author, :description, :status, :cover_pic_url, :price, :picture_url, :picture_url_cache, :genre_id)
  end

  def set_book
    @book = PhysicalBook.find(params[:id])
  end


  def require_permission
    if current_user != PhysicalBook.find(params[:id]).user
      redirect_to root_path
      #Or do something else here
    end
  end

end
