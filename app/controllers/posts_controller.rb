class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order("id DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
      format.xml  { render xml:  @posts }
      format.atom
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id], :include => :comments, order: 'comments.id')
    @comment = Comment.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
      format.xml  { render xml:  @post }
    end
  end
end
