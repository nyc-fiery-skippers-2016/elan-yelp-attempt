helpers do
  def get_user_of_review( user_id )
    @user = User.find_by( id: user_id )
    @user.first_name
  end
end
