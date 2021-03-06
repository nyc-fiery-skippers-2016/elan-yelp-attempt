helpers do
  def current_user
    @current_user ||= User.find_by( id: session[ :id ] )
  end

  def logged_in?
    !!current_user
  end

  def params?( params )
    if params.empty?
      return ''
    else
      return params[:user][:email]
    end
  end
end
