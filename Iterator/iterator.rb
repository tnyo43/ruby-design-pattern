load '../utils/necessary_to_override.rb'

module Iterator
  necessary_to_override :next?, :next
  def next?
    raise NotImplementedError, "Method \"#{__method__}\" is not implemented in class \"#{self.class.name}\"."
  end

  def next
    raise NotImplementedError, "Method \"#{__method__}\" is not implemented in class \"#{self.class.name}\"."
  end
end
