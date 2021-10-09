load 'builder.rb'

class HTMLBuilder < Builder
  class MultipleTitleError < StandardError
  end

  class NoTitleError < StandardError
  end

  class EditingClosedFileError < StandardError
  end

  def initialize
    super()
    @filename = nil
    @file = nil
    @indent = 0
    @has_title = false
    @closed = false
  end

  def make_title(title)
    @filename = [title, '.html'].join
    begin
      @file = File.new @filename, 'w'
    rescue StandardError => e
      puts e
    end
    write '<html>', 1
    make_head title
    write '<body>', 1
    write ['<h1>', title, '</h1>'].join
  end

  def make_string(str)
    raise NoTitleError unless @has_title
    raise EditingClosedFileError if @closed

    write ['<p>', str, '</p>'].join
  end

  def make_items(items)
    raise NoTitleError unless @has_title

    write '<ul>', 1
    items.each { |item| write ['<li>', item, '</li>'].join }
    write '</ul>', -1
  end

  def close
    write '</body>', -1
    write '</html>', -1
    @file.close
    @closed = true
  end

  def result
    @filename
  end

  private

  def write(text, indent_diff = 0)
    raise EditingClosedFileError if @closed

    @indent -= 1 if indent_diff == -1
    @file.write [(' ' * 2 * @indent), text, "\n"].join
    @indent += 1 if indent_diff == 1
  end

  def make_head(title)
    raise MultipleTitleError if @has_title

    write '<head>', 1
    write ['<title>', title, '</title>'].join
    write '</head>', -1
    @has_title = true
  end
end
