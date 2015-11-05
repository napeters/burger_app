module PostsHelper

  def post_params
    params.require(:post).permit(:image_url, :caption, :rating, :restaurant, :location)
  end

end
