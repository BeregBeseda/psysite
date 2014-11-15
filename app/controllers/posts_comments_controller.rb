# encoding: utf-8
class PostsCommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @posts_comment = @post.posts_comments.create(permit_params)

    flash[:success] = nil
	
	@posts_comments_create = true
	
    unless @posts_comment.save	
	  unless @posts_comment.save
	    unless @posts_comment.save 
		  @posts_comments_create = false
		end
      end
    end		
    if @posts_comments_create
      # CHANGE FORM CONTROL DIGIT after every successfully save
      #$form_control_digit = rand(1..9)
      #$comment = nil
      flash[:success] = 'Вы успешно оставили свой комментарий. Благодарю Вас за уделенное время'
    else
      flash[:fail] = 'Чтобы оставить комментарий, пожалуйста, заполните все обязательные поля:'
    end
    @posts_comments_create = nil
    redirect_to post_path(@post)
  end  
  

  private

  def permit_params
    params.require(:posts_comment).permit(:name, :surname, :soc_url, :email, :comment, :post_id, :word)
  end

end
