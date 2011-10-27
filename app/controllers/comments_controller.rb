class CommentsController < ApplicationController
  # POST /comments
  # POST /comments.json
  def create
    @post    = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render "posts/show" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
end
