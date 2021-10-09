load 'banner.rb'
load 'print.rb'

class PrintBannerD
  include Print

  def initialize(text)
    @banner = Banner.new text
  end

  def print_weak
    @banner.show_with_paren
  end

  def print_strong
    @banner.show_with_aster
  end
end
