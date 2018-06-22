class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_commenter
  before_action :set_comment, only: [:create, :edit, :show, :update, :destroy]


  def create
    @comment = @commenter.comments.build(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.html { redirect_to :controller => @commenter.class.to_s.pluralize.downcase, :action => :show, :id => @commenter.id }
        format.js # executa a view comments/create.js.erb
      else
        format.html { redirect_to :controller => @commenter.class.to_s.pluralize.downcase, :action => :show, :id => @commenter.id, notice: "Comment did not save. Please try again."}
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
      redirect_to :controller => @commenter.class.to_s.pluralize.downcase, :action => :show, :id => @commenter.id, notice: "Comment was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to :controller => @commenter.class.to_s.pluralize.downcase, :action => :show, :id => @commenter.id
  end


   private
   def find_commenter
     @klass = params[:commenter_type].capitalize.constantize
     @commenter = @klass.find(params[:commenter_id])
   end
   def set_comment
     @comment = @commenter.comments.find(params[:id])
   end
   def comment_params
     params.require(:comment).permit(:body)
   end
end
