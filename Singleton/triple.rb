class Triple
  def initialize(number)
    @number = number
  end

  @instances = [Triple.new(1), Triple.new(2), Triple.new(3)]

  def self.at(index)
    @instances[index]
  end

  attr_reader :number

  private_class_method :new
end
