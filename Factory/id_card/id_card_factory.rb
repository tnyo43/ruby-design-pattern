load 'factory.rb'
load 'id_card/id_card.rb'

class IDCardFactory < Factory
  def initialize
    super
    @owners = []
    @serial_number = 0
  end

  attr_reader :owners

  protected

  def create_product(owner)
    IDCard.new owner
  end

  def register_product(id_card)
    @serial_number += 1
    h = {
      id: @serial_number,
      owner: id_card.owner
    }
    @owners.push h
  end
end
