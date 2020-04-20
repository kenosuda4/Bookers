class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  	@book = Book.new(book_params)
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redierct_to book_path
  end

  def edit
    @book = Book.find.(params[:id])
  end

  def update
  end

  def destroy
  end

  def top
  end

  private
    def book_params
      params.require(:book).permit(:Title, :Body)
    end
  end
end
