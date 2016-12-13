class StaticPagesController < ApplicationController
   skip_before_action :authenticate_user!, only: :home


  def home
    @physical_books = PhysicalBook.all
    @result = request.location
    @users = User.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow render_to_string(partial: "user_map_box", locals: { user: user}) # I DON'T UNDERSTAND THIS LINE
    end
  end

end
