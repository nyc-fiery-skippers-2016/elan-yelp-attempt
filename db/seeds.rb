user_hash = {}
restaurant_hash = { place_type: 'restaurant' }
review_hash = {}
idx1 = 1
idx2 = 1

6.times do
  user_hash[:first_name] = Faker::Name.first_name
  user_hash[:last_name] = Faker::Name.last_name
  user_hash[:email] = Faker::Internet.safe_email(user_hash[:first_name])
  user_hash[:password] = Faker::Internet.password
  User.create( user_hash )

  restaurant_hash[:name] = Faker::Lorem.word
  restaurant_hash[:address] = Faker::Address.street_address
  restaurant_hash[:city] = Faker::Address.city
  restaurant_hash[:state] = Faker::Address.state
  restaurant_hash[:zip] = Faker::Address.zip
  Place.create( restaurant_hash )

  review_hash[:body] = Faker::Lorem.paragraph
  review_hash[:user_id] = idx1
  review_hash[:place_id] = idx2
  Review.create( review_hash )

  idx1 += 1
  idx2 += 1
end
