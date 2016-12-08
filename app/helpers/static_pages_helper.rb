module StaticPagesHelper
  def brussels_coordinates
    [50.85045, 4.34878]
  end

  def count_users_in_area(coordinates)
    User.near(coordinates, 10).length
  end
end
