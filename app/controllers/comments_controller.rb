class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_commenter
  before_action :comment_params

  def create
    @comment = @commenter.comments.create(comment_params)
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

   private
   def find_commenter
     @klass = params[:commenter_type].capitalize.constantize
     @commenter = @klass.find(params[:commenter_id])
   end
   def comment_params
     params.require(:comment).permit(:body)
   end
end
