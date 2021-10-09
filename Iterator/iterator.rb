module Iterator
  def next?
    raise NotImplementedError, "Method \"#{__method__}\" is not implemented in class \"#{self.class.name}\"."
  end

  def next
    raise NotImplementedError, "Method \"#{__method__}\" is not implemented in class \"#{self.class.name}\"."
  end
end
