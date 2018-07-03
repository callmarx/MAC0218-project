class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search, :user_posts]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :get_subjects #, only: [:index, :show, :new, :edit]

  # GET /posts
  def index
    ###!
    # Faz sentido termos os posts em ordem de postagem
    @posts = Post.all.order('created_at desc')
  end

  def user_posts
    @user = User.friendly.find(params[:user])
    @posts = @user.posts.order('created_at desc')
  end

  def search
    @posts = Post.where("title LIKE ? OR body LIKE ?", "%#{params[:keywords]}%", "%#{params[:keywords]}%").order('created_at desc')
    @keywords = params[:keywords]
  end

  # GET /posts/1
  def show
    @posts = Post.all.order('created_at desc')
  end

  # GET /posts/new
  def new
    @post = current_user.posts.build
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      logger.debug "Post error: #{ puts @post.errors }"
      logger.debug "Post error: #{@post.attributes.inspect}"
      render :new
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private
    def get_subjects
      @subjects = Subject.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :post_type, :subject_id)
    end
end
