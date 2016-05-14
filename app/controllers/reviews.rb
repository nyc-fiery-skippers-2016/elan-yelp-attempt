post '/reviews' do
  review = Review.new( params[:place] )
  if request.xhr?
    if review.user_id == nil
      "Sorry, You have to be logged in to review."
    else
      review.save
      erb :'/reviews/_random_place_success', layout: false
    end
  else
    redirect '/'
  end
end
