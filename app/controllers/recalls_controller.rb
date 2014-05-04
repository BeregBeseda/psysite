# encoding: utf-8
class RecallsController < ApplicationController


  before_action :set_post, only: [:show]


  def index
    @recalls = Recall.all
  end

  def show
    I18n.locale = :ru
    @recall = Recall.find(params[:id])
    $recall_id = @recall.id
    $top_field_text = 'Оставить отзыв о качестве деятельности психолога:'
  end

  def create
    @recall = Recall.new(recall_params)
    $addresser = @recall

    if @recall.save
      $addresser = nil
      redirect_to menus_path
    else
      redirect_to recall_path($recall_id)
    end
  end


  def recall_params
    params.require(:recall).permit(:name, :surname, :my_country, :my_city, :age, :profession, :review, :video_url, :audio_url, :online_address, :site, :img_url, :visible)
  end


  private

  def set_post
    @recall = Recall.find(params[:id])
  end

end
