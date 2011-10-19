class Admin::PostsController < ApplicationController
  before_filter :authenticate_admin!

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
      format.xml  { render xml:  @posts }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
      format.xml  { render xml:  @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to admin_post_url(@post), notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
        format.xml  { render xml:  @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.xml  { render xml:  @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to admin_post_url(@post), notice: 'Post was successfully updated.' }
        format.json { head :ok }
        format.xml  { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.xml  { render xml:  @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to admin_posts_url }
      format.json { head :ok }
      format.xml  { head :ok }
    end
  end
end