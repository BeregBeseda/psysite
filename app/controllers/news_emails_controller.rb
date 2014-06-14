# encoding: utf-8
class NewsEmailsController < ApplicationController


  before_action :set_post, only: [:show]


  def index
    @news_email = NewsEmail.all
  end

  def show
    I18n.locale = :ru
    @news_email = NewsEmail.find(params[:id])
    $top_field_text = 'Чтобы получать по почте новые статьи и подборки лучших статей, введите свой E-mail:'
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

      if $redirect_news == 'posts'
        EmailConfirmationMailer.email_confirmation(@news_email).deliver
        @news_email.use_for_news = false
        @news_email.save
        $success_msg = 'Чтобы получать новости сайта, проверьте свой E-mail. Спасибо'
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
          redirect_to payments_path
        else
          PersEmailMailer.per_pay_email(@news_email).deliver
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
          redirect_to payments_path
        else
          ProductsEmailMailer.product_pay_email(@news_email).deliver
          redirect_to payments_path
        end
      end
    else
      if $now_post_product
        redirect_to product_path($now_post_product)
        $now_post_product = nil
      else
        redirect_to menus_path
      end
    end

    if $redirect_news != 'posts' and $redirect_news != 'products' and $redirect_news != 'pers'
      redirect_to menus_path
    end
  end



  def update
    if params[:akey]
      @news_email = NewsEmail.find(:first, conditions: { akey: params[:akey]} )
      if @news_email.akey == params[:akey]
        @news_email.use_for_news = true
        if @news_email.delivery_agree_date == nil
          @news_email.delivery_agree_date = ''
        end
        @news_email.delivery_agree_date = @news_email.delivery_agree_date + Time.now.to_s + ', '
        key_int = 10.times.map{rand(1..99)}
        key_str = 10.times.map{('a'..'z').to_a[rand(26)]}
        key_int.concat(key_str)
        key_int.shuffle!
        @news_email.akey = key_int.join
        @news_email.save
        $success_msg = 'Вы подтвердили своё желание получать новости с сайта психолога Татьяны Вакульчик. Спасибо за доверие'
        redirect_to products_path
      end
    elsif params[:id]
      @news_email = NewsEmail.find(:first, conditions: { id: params[:id]} )
      if @news_email.email == params[:email]
        @news_email.use_for_news = false
        if @news_email.delivery_off_date == nil
          @news_email.delivery_off_date = ''
        end
        @news_email.delivery_off_date = @news_email.delivery_off_date + Time.now.to_s + ', '
        @news_email.save
        $success_msg = 'Вы отписались от получения новостей сайта. Очень жаль. Пожалуйста, если у Вас есть свободная минутка, оставьте свой отзыв о деятельности психолога и укажите причину отказа от рассылки'
        redirect_to mentions_path
      end
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
