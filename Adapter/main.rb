load 'print_banner_extends.rb'
load 'print_banner_delegate.rb'

module Main
  puts 'extends pattern'
  pe = PrintBannerE.new 'Hello, Ruby!'
  pe.print_weak
  pe.print_strong
  puts ''

  puts 'delegate pattern'
  pd = PrintBannerD.new 'Hello, Ruby!'
  pd.print_weak
  pd.print_strong
end
