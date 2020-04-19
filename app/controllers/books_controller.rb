class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redierct_to vook_path
  def show
  end

  def edit
  end

  def top
  end

  private
    def blog_params
      params.require(:book).permit(:Title, :Body)
    end

end
