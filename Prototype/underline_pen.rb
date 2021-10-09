load 'product.rb'

class UnderLinePen < Product
  def initialize(decochar)
    super()
    @decochar = decochar
  end

  def use(text)
    border = (1..(text.length)).map { @decochar }.join

    puts text
    puts border
  end
end
