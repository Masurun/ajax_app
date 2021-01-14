class PostsController < ApplicationController
  def index
  @posts = Post.all
  end
  
  def new
  end
  
  def create
    Post.create(content: params[:content])#今回は入力データをビューで使用しないため＠入らないインスタンス変数
  end
end
