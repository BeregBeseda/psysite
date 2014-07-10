# encoding: utf-8
class ProductsCommentsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @products_comment = @product.products_comments.create(permit_params)
    $comment = @products_comment

    $success_msg = nil

    if @products_comment.save
      $comment = nil
      $success_msg = 'Вы успешно оставили свой комментарий. Благодарю Вас за уделенное время'
    else
      $fail_msg = 'Чтобы оставить комментарий, пожалуйста, заполните все обязательные поля:'
    end

    redirect_to product_path(@product)
  end


  private

    def permit_params
      params.require(:products_comment).permit(:name, :surname, :soc_url, :email, :comment, :product_id, :word)
    end

end
