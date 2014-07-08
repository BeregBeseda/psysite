# encoding: utf-8
class MentionsController < ApplicationController

  # selects the CURRENT REVIEW
  before_action :set_mention, only: [:show]


  def index
    @mentions = Mention.all
    # if there is not reviews - set MESSAGE FOR FORM for new review
    $top_field_text = 'Оставить отзыв о качестве деятельности психолога:'
  end


  def show
    I18n.locale = :ru
    @mention = Mention.find(params[:id])
    # set REVIEW ID for redirection to right review when review is not save
    $mention_id = @mention.id
    # set MESSAGE FOR FORM for new review
    $top_field_text = 'Оставить отзыв о качестве деятельности психолога:'
  end


  def create
    @mention = Mention.new(mention_params)
    # addresser var will send to FORM for new review
    $addresser = @mention

    if @mention.save
      # NOT to cause a CONFLICT at form
      $addresser = nil
      # if review successfully added - set SUCCESSFULLY MESSAGE FOR user
      $success_msg = 'Вы успешно оставили свой отзыв. Благодарю Вас за уделенное время'
      redirect_to mentions_path
    else
      redirect_to mention_path($mention_id)
    end
  end


  def mention_params
    params.require(:mention).permit(:name, :surname, :place, :nation, :age, :profession, :mention, :video_url, :audio_url, :online_address, :site, :img_url, :visible, :word)
  end


  private

  def set_mention
    @mention = Mention.find(params[:id])
  end

end
