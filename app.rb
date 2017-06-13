def add
    info = {}
    
    print "title: "
    info['title'] = gets.chomp
    
    print "description: "
    info['description'] = gets.chomp
    
    print "year: "
    info['year'] = gets.chomp
    
    print "isbn: "
    info['isbn'] = gets.chomp
    
    print "author: "
    info['author'] = gets.chomp
    
    print "genre: "
    info['genre'] = gets.chomp
    
    print "location: "
    info['location'] = gets.chomp
    
    book = Book.new(info)
    book.save
end

def search
    print "title: "
    title = gets.chomp
    
    books = Book.where("title like ?", "%#{title}%")
    
    if books.length == 0
        puts "Book not found"
    else
        books.each do |book|
            puts "Title: #{book.title}"
            puts "Description: #{book.description}"
            puts "Year: #{book.year}"
        end
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