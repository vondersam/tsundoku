class StaticPagesController < ApplicationController

  def home
    @physical_books = PhysicalBook.all
    @result = request.location #CHECK WITH THOMAS
    @users = User.where.not(latitude: nil, longitude: nil) #comes from the LeWagon template on web
    # @users_coordinates = []  #adapted from Karr
    # @users.each do |user|    #adapted from Karr
    #   user_coordinates = { lat: user.latitude, lng: user.longitude } #adapted from Karr
    #   @users_coordinates << user_coordinates    #adapted from Karr
    # end


    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow render_to_string(partial: "map_box", locals: { user: user }) # I DON'T UNDERSTAND THIS LINE
    end
  end

end
