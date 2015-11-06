class PostsController < ApplicationController
  include PostsHelper

  def index
    @user = User.find(params[:user_id])
    @user_posts = @user.posts
  end

  def new
    @user = User.find(params[:user_id])
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = params[:user_id]
    @post.save

    flash.notice = "Posted!"
    redirect_to user_posts_path
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      flash.notice = "Post updated!"
      redirect_to user_post_path
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    flash.notice = "Post deleted!"
    redirect_to user_posts_path
  end
end
