load '../utils/necessary_to_override.rb'

class Display
  # デフォルトの print メソッドはそのまま使いたいので、名前をちょっと変えている
  necessary_to_override :open, :print_, :close

  def display(count)
    open
    (1..count).each { print_ }
    close
  end
end
