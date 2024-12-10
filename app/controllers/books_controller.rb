class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
