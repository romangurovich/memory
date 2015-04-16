module UsersHelper
  def greeting_name
    @user && @user.first_name ? @user.first_name : 'friend'
  end
end
