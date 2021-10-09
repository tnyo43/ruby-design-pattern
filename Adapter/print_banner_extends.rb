load 'banner.rb'
load 'print.rb'

class PrintBannerE < Banner
  include Print

  def print_weak
    show_with_paren
  end

  def print_strong
    show_with_aster
  end
end
