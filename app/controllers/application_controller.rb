class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def new
  end
  
  def create
      book = Book.new
      book.title = params['title']
      book.description = params['description']
      book.year = params['year']
      book.isbn = params['isbn']
      book.author = params['author']
      book.genre = params['genre']
      book.location = params['location']
      book.save
      redirect_to '/book'
  end
end
