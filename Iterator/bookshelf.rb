load 'aggregate.rb'
load 'bookshelf_iterator.rb'

class BookShelf
  include Aggregate

  def initialize
    @books = []
  end

  def [](index)
    @books[index]
  end

  def append(book)
    @books.push book
  end

  def length
    @books.length
  end

  def iterator
    BookShelfIterator.new self
  end
end
