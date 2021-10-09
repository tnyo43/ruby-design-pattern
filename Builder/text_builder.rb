load 'builder.rb'

class TextBuilder < Builder
  @divider = '========================='

  def initialize
    super()
    @buffer = []
  end

  def make_title(title)
    @buffer.push @divider, ['『', title, '』'].join, ''
  end

  def make_string(str)
    @buffer.push ['  ', str], ''
  end

  def make_items(items)
    items.each { |item| @buffer.push item }
  end

  def close
    @buffer.push @divider
  end

  def result
    [@buffer.join("\n"), "\n"].join
  end
end
