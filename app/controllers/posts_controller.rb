# encoding: utf-8
class PostsController < ApplicationController

  before_action :set_post, only: [:show]



  def index
    @posts = Post.all
  end

  def show
    I18n.locale = :ru
    @post = Post.find(params[:id])
    $post_id = @post.id
    $event_name = @post.name
    $top_field_text = 'Введите свой E-mail, чтобы оплатить Вебинар, и на Вашу почту придет вся необходимая информация для участия:'
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

end
