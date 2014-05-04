# encoding: utf-8
class ReviewsController < ApplicationController


  before_action :set_post, only: [:show]


  def index
    @reviews = Review.all
  end

  def show
    I18n.locale = :ru
    @review = Review.find(params[:id])
    $review_id = @review.id
    $top_field_text = 'Оставить отзыв о качестве деятельности психолога:'
  end

  def create
    @review = Review.new(review_params)
    $addresser = @review

    if @review.save
      $addresser = nil
      redirect_to menus_path
    else
      redirect_to review_path($review_id)
    end
  end


  def review_params
    params.require(:review).permit(:name, :surname, :my_country, :city, :age, :profession, :review, :video_url, :audio_url, :online_address, :site, :img_url, :visible)
  end


  private

  def set_post
    @review = Review.find(params[:id])
  end

end
