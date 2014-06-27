class ProductsGetsController < ApplicationController

  def index
    @news_email = NewsEmail.find(68)
  end

end
