class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_post
  before_action :set_comment, only: [:edit, :show, :update, :destroy]


  def create
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_path(@post) }
        format.js # executa a view comments/create.js.erb
      else
        format.html { redirect_to post_path(@post), notice: "Comment did not save. Please try again."}
        format.js
      end
    end
  end

  def new
  end

  def show
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to post_path(@post), notice: "Comment was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to post_path(@post)
  end


   private
   def find_post
     @post = Post.find(params[:post_id])
   end
   def set_comment
     @comment = @post.comments.find(params[:id])
   end
   def comment_params
     params.require(:comment).permit(:body)
   end
end
