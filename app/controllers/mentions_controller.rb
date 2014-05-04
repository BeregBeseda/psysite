# encoding: utf-8
class MentionsController < ApplicationController


  before_action :set_mention, only: [:show]


  def index
    @mentions = Mention.all
    $top_field_text = 'Оставить отзыв о качестве деятельности психолога:'
  end

  def show
    I18n.locale = :ru
    @mention = Mention.find(params[:id])
    $mention_id = @mention.id
    $top_field_text = 'Оставить отзыв о качестве деятельности психолога:'
  end

  def create
    @mention = Mention.new(mention_params)
    $addresser = @mention

    if @mention.save
      $addresser = nil
      $success_msg = 'Вы успешно оставили свой отзыв. Благодарю Вас за уделенное время'
      redirect_to mentions_path
    else
      redirect_to mention_path($mention_id)
    end
  end


  def mention_params
    params.require(:mention).permit(:name, :surname, :place, :nation, :age, :profession, :mention, :video_url, :audio_url, :online_address, :site, :img_url, :visible)
  end


  private

  def set_mention
    @mention = Mention.find(params[:id])
  end

end
