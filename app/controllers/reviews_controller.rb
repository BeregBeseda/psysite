# encoding: utf-8
class ReviewsController < ApplicationController

  before_action :set_post, only: [:show]

  def index
    @reviews = Review.all
  end
  
  def show
  end
  
  def new
    @reviews = Review.all  
    @review = Review.new
    @new_review = true
  end


  private

  def set_post
    @review = Review.find(params[:id])
  end
  
end
