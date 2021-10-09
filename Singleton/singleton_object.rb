# 参考: https://docs.ruby-lang.org/ja/latest/class/Singleton.html
require 'singleton'

class SingletonX
  include Singleton

  def initialize
    puts 'インスタンスを生成しました'
  end
end
