# encoding: utf-8
class NewsEmailsController < ApplicationController


  before_action :set_post, only: [:show]


  def index
    @news_email = NewsEmail.all
  end

  def show
    I18n.locale = :ru
    @news_email = NewsEmail.find(params[:id])
    $top_field_text = 'Чтобы получать по почте новые и лучшие статьи, напишите'
  end



  def create
    @news_email = NewsEmail.new(news_email_params)
    $addresser = @news_email

    if @news_email.valid?
      key_int = 10.times.map{rand(1..99)}
      key_str = 10.times.map{('a'..'z').to_a[rand(26)]}
      key_int.concat(key_str)
      key_int.shuffle!
      @news_email.akey = key_int.join

      # CHANGE FORM CONTROL DIGIT after every successfully save
      $form_control_digit = rand(1..9)

      if $redirect_news == 'posts'
        EmailConfirmationMailer.email_confirmation(@news_email).deliver
        @news_email.use_for_news = false
        @news_email.save
        $success_msg = 'Чтобы получать новости сайта, проверьте свой E-mail. Спасибо'
        $addresser = nil
        redirect_to posts_path
      end

      if $redirect_news == 'pers'
        if @news_email.use_for_news
          @news_email.use_for_news = false
          unless NewsEmail.find_by_email(@news_email.email)
            @news_email.save
          end
          EmailConfirmationMailer.email_confirmation(@news_email).deliver
          PersEmailMailer.per_pay_email(@news_email).deliver
          $addresser = nil
          redirect_to payments_path
        else
          PersEmailMailer.per_pay_email(@news_email).deliver
          $addresser = nil
          redirect_to payments_path
        end
      end

      if $redirect_news == 'products'
        if @news_email.use_for_news
          @news_email.use_for_news = false
          unless NewsEmail.find_by_email(@news_email.email)
            @news_email.save
          end
          EmailConfirmationMailer.email_confirmation(@news_email).deliver
          ProductsEmailMailer.product_pay_email(@news_email).deliver
          $addresser = nil
          redirect_to payments_path
        else
          ProductsEmailMailer.product_pay_email(@news_email).deliver
          $addresser = nil
          redirect_to payments_path
        end
      end
    else

      if $redirect_news == 'posts'
        if @news_email.name != ''
          $input_value_name = @news_email.name
        else
          $input_value_name = 'сюда'
        end
        if @news_email.word != ''
          $input_value_word = @news_email.word
        else
          $input_value_word = 'сюда'
        end
        if @news_email.word != ''
          $input_value_email = @news_email.email
        else
          $input_value_email = 'сюда'
        end
        if $now_post_product
          redirect_to post_path($now_post_product)
          $now_post_product = nil
        else
          redirect_to posts_path
        end

      elsif $redirect_news == 'pers'
        redirect_to pers_path

      elsif $redirect_news == 'products'
        if $now_post_product
          redirect_to product_path($now_post_product)
          $now_post_product = nil
        else
          redirect_to products_path
        end
      else
        redirect_to menus_path
      end
    end

    if $redirect_news != 'posts' and $redirect_news != 'products' and $redirect_news != 'pers'
      redirect_to menus_path
    end
  end



  def update
    if params[:id] and @news_email = NewsEmail.find(:first, conditions: { id: params[:id]} ) and @news_email.email == params[:email]
        @news_email.use_for_news = true
        if @news_email.delivery_agree_date == nil
          @news_email.delivery_agree_date = ''
        end
        @news_email.delivery_agree_date = @news_email.delivery_agree_date + Time.now.to_s + ', '
        @news_email.save
        $success_msg = 'Вы подтвердили своё желание получать новости с сайта психолога Татьяны Вакульчик. Спасибо за доверие'
        redirect_to products_path
    elsif params[:akey] and @news_email = NewsEmail.find(:first, conditions: { akey: params[:akey]} )
        @news_email.use_for_news = false
        if @news_email.delivery_off_date == nil
          @news_email.delivery_off_date = ''
        end
        @news_email.delivery_off_date = @news_email.delivery_off_date + Time.now.to_s + ', '
        key_int = 10.times.map{rand(1..99)}
        key_str = 10.times.map{('a'..'z').to_a[rand(26)]}
        key_int.concat(key_str)
        key_int.shuffle!
        @news_email.akey = key_int.join
        @news_email.save
        $success_msg = 'Вы отписались от получения новостей сайта. Очень жаль. Пожалуйста, если у Вас есть свободная минутка, оставьте свой отзыв о деятельности психолога и укажите причину отказа от рассылки'
        $delivery_off_now = true
        redirect_to mentions_path
    else
      redirect_to menus_path
    end

  end



  def news_email_params
    params.require(:news_email).permit(:email, :use_for_news, :name, :word, :akey)
  end

  private

  def set_post
    @news_email = NewsEmail.find(params[:id])
  end

end
