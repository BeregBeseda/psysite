class PostsController < ApplicationController

  before_action :set_post, only: [:show]



  def index
    @posts = Post.all
  end

  def show
    I18n.locale = :ru
    @post = Post.find(params[:id])
    $post_id = @post.id
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

end
