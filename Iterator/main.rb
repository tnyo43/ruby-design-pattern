load 'book.rb'
load 'bookshelf.rb'

bookshelf = BookShelf.new
bookshelf.append(Book.new('Around the World in 80 Days'))
bookshelf.append(Book.new('Bible'))
bookshelf.append(Book.new('Cinderella'))
bookshelf.append(Book.new('Daddy-Long-Legs'))

iterator = bookshelf.iterator

while iterator.next?
  book = iterator.next
  puts book.name
end
