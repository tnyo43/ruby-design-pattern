load 'display.rb'

class StringDisplay < Display
  def initialize(str)
    super()
    @str = str
  end

  def open
    puts ['+', '-' * (@str.length + 2), '+'].join
  end

  def print_
    puts ['| ', @str, ' |'].join
  end

  def close
    puts ['+', '-' * (@str.length + 2), '+'].join
  end
end
