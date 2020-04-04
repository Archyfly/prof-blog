class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_post, only: [:show]

  # Index action to render all posts
  def index
    @posts = Post.all
  end

  # New action for creating post


  # The show action renders the individual post after retrieving the the id
  def show
    @post = Post.find(params[:id])
  end

  private

  def find_post
    post = Post.find(params[:id])
  end
end
