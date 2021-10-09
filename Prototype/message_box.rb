load 'product.rb'

class MessageBox < Product
  def initialize(decochar)
    super()
    @decochar = decochar
  end

  def use(text)
    border = (1..(text.length + 4)).map { @decochar }.join

    puts border
    puts [@decochar, ' ', text, ' ', @decochar].join
    puts border
  end
end
