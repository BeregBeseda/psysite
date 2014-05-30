# encoding: utf-8
class PostsCommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @posts_comment = @post.posts_comments.create(posts_comment_params)
    $comment = @posts_comment

    if @posts_comment.save
      $comment = nil
      $success_msg = 'Вы успешно оставили свой комментарий. Благодарю Вас за уделенное время'
    end

    redirect_to post_path(@post)
    #@posts_comment = @post.posts_comments.create(permit_params)
    #$comment_js = "<div id='focus_style'></div>"
    #$comment_js = "<div id='focus_style'></div>"

    #if @posts_comment.save
    #  @comment_js = "<div id='focus_style'></div>"
    #else
    #end


  end



  def posts_comment_params
    params.require(:posts_comment).permit(:name, :surname, :soc_url, :email, :comment, :post_id)
  end

    #def permit_params
    #  params.require(:posts_comment).permit(:name, :surname, :soc_url, :email, :comment, :post_id)
    #end

end
