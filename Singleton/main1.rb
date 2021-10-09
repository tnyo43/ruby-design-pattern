load 'singleton_object.rb'

puts 'start!'

obj1 = SingletonX.instance
obj2 = SingletonX.instance

puts(obj1 == obj2 ? '同じインスタンス' : '異なるインスタンス')

puts 'end!'

#
# output
#
# start!
# インスタンスを生成しました
# 同じインスタンス
# end!
#
