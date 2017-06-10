def add
    print "title: "
    title = gets.chomp
    
    print "description: "
    description = gets.chomp
    
    print "year: "
    year = gets.chomp
    
    print "isbn: "
    isbn = gets.chomp
    
    print "author: "
    author = gets.chomp
    
    print "genre: "
    genre = gets.chomp
    
    print "location: "
    location = gets.chomp
    
    book = Book.new
    book.title = title
    book.description = description
    book.year = year
    book.isbn = isbn
    book.author = author
    book.genre = genre
    book.location = location
    
    book.save
end

def search
    print "title: "
    title = gets.chomp
    
    book = Book.find_by({:title => title})
    
    if book == nil
        puts "Book not found"
    else
        puts "Title: #{book.title}"
        puts "Description: #{book.description}"
        puts "Year: #{book.year}"
    end
end

puts "Welcome To Library"

puts "1) add a book"
puts "2) search"
puts ""
print ">"

option = gets.chomp

if option == '1'
    puts "Add Book"
    add
elsif option == '2'
    puts "Search Book"
    search
else
    puts "Wrong option"
end