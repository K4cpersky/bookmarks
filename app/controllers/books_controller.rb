class BooksController < ApplicationController
  
  def index
    @books = Book.all.order(rank_this_week: :asc).limit(10)
  end
  
  def show
    @book = Book.find(params[:id])
    @reviews = @book.reviews
  end
end
