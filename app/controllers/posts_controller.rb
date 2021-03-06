class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_url, notice: 'Successfully created.' }
      else
        format.html { render action: new }
      end
    end
  end

  def update
  end

  def feed
    @posts = Post.order(created_at: :desc).limit(20)

    respond_to do |format|
      format.html
      format.rss { render layout: false }
    end
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :medialink)
  end
end
