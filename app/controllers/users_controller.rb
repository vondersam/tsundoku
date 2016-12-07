class UsersController < ApplicationController
 before_action :set_user

 def index
    # @result = request.location #CHECK WITH THOMAS
    @users = User.where.not(latitude: nil, longitude: nil) #comes from the LeWagon template on web
    # @users_coordinates = []  #adapted from Karr
    # @users.each do |user|    #adapted from Karr
    #   user_coordinates = { lat: user.latitude, lng: user.longitude } #adapted from Karr
    #   @users_coordinates << user_coordinates    #adapted from Karr
    # end

  end

  def index_of_books
    @books = @user.physical_books
  end


  def show
    @books = @user.physical_books
    @last_book = @user.last_book
    @user_coordinates = { lat: @user.latitude, lng: @user.longitude }
    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end

