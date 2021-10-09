load 'display.rb'

class CharDisplay < Display
  def initialize(char)
    super()
    @char = char
  end

  def open
    print '<<'
  end

  def print_
    print @char
  end

  def close
    puts '>>'
  end
end
