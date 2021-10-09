load 'iterator.rb'

class BookShelfIterator
  include Iterator

  def initialize(bookshelf)
    @bookshelf = bookshelf
    @index = 0
  end

  def next?
    @index < @bookshelf.length
  end

  def next
    book = @bookshelf[@index]
    @index += 1
    book
  end
end
