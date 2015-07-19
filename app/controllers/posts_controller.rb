# encoding: utf-8
class PostsController < ApplicationController

  before_action :set_post, only: [:show]


  def index
    @posts = Post.all
  end

  def show
    #if $form_control_digit == nil
    #  $form_control_digit = rand(1..9)
    #end
    #I18n.locale = :ru
    #@post = Post.find(params[:id])
    #flash[:notise] = 'и я буду присылать Вам свежие, а также любимые читателями статьи и видео семинары'
    
    ###@user = cur_user
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
