# encoding: utf-8
class PostsCommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @posts_comment = @post.posts_comments.create(permit_params)
    @posts_comment.visible = true
    $comment = @posts_comment

    $success_msg = nil

    if @posts_comment.save
      # CHANGE FORM CONTROL DIGIT after every successfully save
      $form_control_digit = rand(1..9)
      $comment = nil
      $success_msg = 'Вы успешно оставили свой комментарий. Благодарю Вас за уделенное время'
    else
      $fail_msg = 'Чтобы оставить комментарий, пожалуйста, заполните все обязательные поля:'
    end

    redirect_to post_path(@post)
  end


  private

  def permit_params
    params.require(:posts_comment).permit(:name, :surname, :soc_url, :email, :comment, :post_id, :word)
  end

end
