class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to @book
  end

  def show
    @book =Book.find(params[:id])
  end

  private
  def book_params
    params.permit(:title, :body)
  end
end
