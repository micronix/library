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
      book.image = params['image']
      book.save
      redirect_to '/'
  end
  
  def search_form
  end
  
  def search
    title = params[:title]
    
    @books = Book.where('title LIKE ?',"%#{title}%")
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    
    @book.title = params['title']
    @book.description = params['description']
    @book.year = params['year']
    @book.isbn = params['isbn']
    @book.author = params['author']
    @book.genre = params['genre']
    @book.location = params['location']
    @book.image = params['image']
    
    @book.save
    
    redirect_to '/'
  end
end
