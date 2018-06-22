class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :find_subject, only: [:index, :show, :new, :edit]

  # GET /posts
  def index
    ###!
    # Faz sentido termos os posts em ordem de postagem
    @posts = @subject.posts.order('created_at desc')
  end

  # GET /posts/1
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
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
    def find_subject
      @subject = Subject.find(params[:subject_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      ###!
      # Para incluir o :user_id nos paramentros de entrada na criação do post
      # utilizamos a função merge como segue:
      params.require(:post).permit(:title, :body, :post_type).merge(user_id: current_user.id, subject_id: params[:subject_id])
    end
end
