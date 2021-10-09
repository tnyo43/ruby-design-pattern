class Banner
  def initialize(text)
    @text = text
  end

  def show_with_paren
    puts ['(', @text, ')'].join
  end

  def show_with_aster
    puts ['*', @text, '*'].join
  end
end
