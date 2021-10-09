class Display
  def open
    raise NotImplementedError, "Method \"#{__method__}\" is not implemented in class \"#{self.class.name}\"."
  end

  # デフォルトの print メソッドはそのまま使いたいので、名前をちょっと変えている
  def print_
    raise NotImplementedError, "Method \"#{__method__}\" is not implemented in class \"#{self.class.name}\"."
  end

  def close
    raise NotImplementedError, "Method \"#{__method__}\" is not implemented in class \"#{self.class.name}\"."
  end

  def display(count)
    open
    (1..count).each { print_ }
    close
  end
end
