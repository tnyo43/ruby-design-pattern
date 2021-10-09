load 'product.rb'

class IDCard < Product
  def initialize(owner)
    super()
    @owner = owner
    puts [@owner, 'のカードを作ります'].join
  end

  def use
    puts [@owner, 'のカードを使います'].join
  end

  attr_reader :owner
end
