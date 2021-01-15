class PostsController < ApplicationController
  def index
  @posts = Post.all.order(id: "DESC")
  end
  
  
  def create
    Post.create(content: params[:content])#今回は入力データをビューで使用しないため＠入らないインスタンス変数
    redirect_to action: :index
  end
end
