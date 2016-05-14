get '/' do
  @random_place = Place.all.sample
  @places = Place.all
  erb :'/index'
end
