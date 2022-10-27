class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @post = Post.new
  end


  def create
    @post = Post.new(post_params)
    @post.author_id = current_user.id
  
    if @post.save
      redirect_to posts_path
    else 
      render :new, status: :unprocessable_entity
    end

  end

  def index
    @posts = Post.all
  end

  def post_params
    params.require(:post).permit(:title, :body, :author_id)
  end
end
