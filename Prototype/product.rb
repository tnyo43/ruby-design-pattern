load '../utils/necessary_to_override.rb'

class Product
  necessary_to_override :use

  def create_clone
    # 参考: https://docs.ruby-lang.org/ja/latest/method/Object/i/clone.html
    Marshal.load(Marshal.dump(self))
  rescue StandardError => e
    puts e.message
  end
end
