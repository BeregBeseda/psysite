# encoding: utf-8
class MentionsController < ApplicationController

  # selects the CURRENT REVIEW
  before_action :set_mention, only: [:show]


  def index
    if $form_control_digit == nil
      $form_control_digit = rand(1..9)
    end
    @mentions = Mention.all
    # if there is not reviews - set MESSAGE FOR FORM for new review
    flash[:notise] = 'Оставить отзыв о качестве деятельности психолога:'
  end


  def show
    if $form_control_digit == nil
      $form_control_digit = rand(1..9)
    end
    I18n.locale = :ru
    @mention = Mention.find(params[:id])
    # set REVIEW ID for redirection to right review when review is not save
    #$mention_id = @mention.id
    # set MESSAGE FOR FORM for new review
    flash[:notise] = 'Оставить отзыв о качестве деятельности психолога:'
  end


  def create
    errors[:name] = nil
    @mention = Mention.new(mention_params)
    # addresser var will send to FORM for new review
    @mention_valid = true
	
	VALIDATION
	
    if @mention_valid
	  @mention_valid = nil
	  @mention_create_save = true
	  unless @mention.save
	    unless @mention.save
	      unless @mention.save
		    @mention_create_save = false
		  end  
	    end
  	  end	
      if @mention_create_save	  
	    @mention_create_save = nil
        # CHANGE FORM CONTROL DIGIT after every successfully save
        #$form_control_digit = rand(1..9)
        # NOT to cause a CONFLICT at form
        @addresser = nil
        # if review successfully added - set SUCCESSFULLY MESSAGE FOR user
        flash[:success] = 'Вы успешно оставили свой отзыв. Благодарю Вас за уделенное время'
	    @mention_valid = nil
        redirect_to mentions_path
	  else
	    @mention_create_save = nil
	    @mention_valid = nil
		flash[:fail] = 'Попробуйте ещё раз'
	    redirect_to mention_path(@mention)	  
      end	  
    else
	  @mention_create_save = nil
	  @mention_valid = nil
      redirect_to mention_path(@mention)
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
