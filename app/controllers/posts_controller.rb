# encoding: utf-8
class PostsController < ApplicationController

  before_action :set_post, only: [:show]


  def index
    @posts = Post.all
  end

  def show
    I18n.locale = :ru
    @post = Post.find(params[:id])
    $now_post_product = @post
    $redirect_news = 'posts'
    $post_id = @post.id
    $event_name = @post.name
    $top_field_text = 'Чтобы получать по почте новые статьи и подборки лучших статей, введите свой E-mail:'
  end

  def create

    #if $comment.save
    #  $success_msg = 'post_comment-cool'
    #  redirect_to posts_path
    #else
    #  redirect_to post_path($post_id)
    #end
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

end
