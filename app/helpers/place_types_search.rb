helpers do
  def restaurants
    @restaurants = Place.where( place_type: 'restaurant' )
  end

  def clubs
    @clubs = Place.where( place_type: 'club' )
  end

  def bars
    @bars = Place.where( place_type: 'bar' )
  end

  def lounges
    @lounges = Place.where( place_type: 'lounge' )
  end
end
