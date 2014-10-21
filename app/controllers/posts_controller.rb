class PostsController < ApplicationController
  before_action :authenticate_user!
  before_filter :is_admin
  before_action :set_post, only: [:edit, :update, :destroy]


  def index
    @posts = Post.all
  end


  def new
    @post = Post.new
    @pictures = Picture.order('updated_at DESC')
  end


  def edit
    @pictures = Picture.order('updated_at DESC')
  end


  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_url, notice: 'Post was successfully created.' }
        format.json { head :no_content }
      else
        @pictures = Picture.order('updated_at DESC')
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to posts_url, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        @pictures = Picture.order('updated_at DESC')
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :description, picture_ids: [])
    end

    def is_admin
      unless current_user.admin?
        redirect_to :root, alert: "Access denied!"
      end
    end

end
