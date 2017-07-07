class PostsController < ApplicationController
#1. 우리가 쓴 글들을 다 볼 수 있는 페이지
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def create
    # @post = Post.new
    # @post.title = params[:title]
    # @post.content = params[:content]
    # @post.save
    # Form_tag 전용
    # Post.create(title: params[:title], content: params[:content])
    
    # Form_for 전용
    Post.create(title: params[:post][:title], content: params[:post][:content])
    
    redirect_to '/posts' #Method Get
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    # Form_tag 전용
    # @post.update_attributes(title: params[:title], content: params[:content])
    
    # Form_for 전용
    @post.update_attributes(title: params[:post][:title], content: params[:post][:content])
    redirect_to '/posts'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/posts'
  end
end
