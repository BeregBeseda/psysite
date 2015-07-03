# encoding: utf-8
class ProductsCommentsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @products_comment = @product.products_comments.create(permit_params)

    flash[:success] = nil
	
	@products_comments_create = true
	
    unless @products_comment.save	
	  unless @products_comment.save
	    unless @products_comment.save 
		  @products_comments_create = false
		end
      end
    end		
    if @products_comments_create
      # CHANGE FORM CONTROL DIGIT after every successfully save
      #$form_control_digit = rand(1..9)
      #$comment = nil
      flash[:success] = 'Вы успешно оставили свой комментарий. Благодарю Вас за уделенное время'
    else
      flash[:fail] = 'Чтобы оставить комментарий, пожалуйста, заполните все обязательные поля:'
    end
    @products_comments_create = nil
    redirect_to product_path(@product)
  end


  private

  def permit_params
    params.require(:products_comment).permit(:name, :surname, :soc_url, :email, :comment, :product_id, :word)
  end

end
