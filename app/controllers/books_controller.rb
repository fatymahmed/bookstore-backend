class BooksController < ApplicationController
  def index
    @books = Book.all
    render :json => @books
  end

  def create
    @book = Book.new(book_params)
    render :json => @book unless !@book.save
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    render :json => @book
  end

  private

  def book_params
    params.require(:book).permit(:title, :Category, :author)
  end
end
