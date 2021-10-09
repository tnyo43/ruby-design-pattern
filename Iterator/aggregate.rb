module Aggregate
  def iterator
    raise NotImplementedError, "Method \"#{__method__}\" is not implemented in class \"#{self.class.name}\"."
  end
end
