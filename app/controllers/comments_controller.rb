class CommentsController < ApplicationController
  def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.build(params[:comment])
		@comment.save
		redirect_to @post
  end

  def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy

		redirect_to @comment.post
  end

  def edit
	  @comment = Comment.find(params[:id])
  end

  def show
	  @comment = Comment.find(params[:id])
		respond_to do |format|
			format.html { render action: "show"}# show.html.erb
		end
  end

	def update
		@comment = Comment.find(params[:id])
		respond_to do |format|
			if @comment.update_attributes(params[:comment])
				format.html { redirect_to @comment.post, notice: 'Comment was successfully updated.' }
			else
				format.html { render action: "edit" }
			end
		end
	end

end
