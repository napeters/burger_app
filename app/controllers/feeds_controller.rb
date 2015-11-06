class FeedsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end
end
