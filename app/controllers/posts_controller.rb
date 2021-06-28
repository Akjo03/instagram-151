class PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_post, only: [:show, :destroy]
  
    def index
      @posts = Post.order(id: :desc).limit(10).includes(:photos)
      @post = Post.new
    end
  
    def create
      @post = current_user.posts.build(post_params)
      if @post.save
        if params[:images]
          params[:images].each do |img|
            @post.photos.create(image: img)
          end
        end
  
        flash[:notice] = "Saved successfully"
        redirect_to posts_path
      else
        flash[:alert] = "Someting went wrong ..."
        redirect_to posts_path
      end
    end
  
    def show
      @photos = @post.photos
    end
  
    def destroy
    end
  
    private
  
    def find_post
      @post = Post.find_by id: params[:id]
  
      return if @post
      flash[:danger] = "Post doesn't exist!"
      redirect_to root_path
    end
  
    def post_params
      params.require(:post).permit(:content)
    end
  end