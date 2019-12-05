class BooksController < ApplicationController
  def index
    @books = Book.all
    respond_to do |format|
      format.json { render :json => @books }
    end
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      respond_to do |format|
        format.json { render :json => @book }
      end
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_to do |format|
      format.json { render :json => @book }
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :Category, :author)
  end
end
