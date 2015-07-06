# encoding: utf-8
class BooksController < ApplicationController

  before_action :set_post, only: [:show]

  def index
    @books = Book.all
  end
  
  def show
  end


  private

  def set_post
    @book = Book.find(params[:id])
  end

end
