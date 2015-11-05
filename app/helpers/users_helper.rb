module UsersHelper

  def user_params
    params.require(:user).permit(
      :f_name,
      :l_name,
      :username,
      :email_address,
      :password,
      :password_confirmation,
      :profile_pic_url,
      :bio
    )
  end

end
