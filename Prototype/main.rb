load 'manager.rb'
load 'underline_pen.rb'
load 'message_box.rb'

manager = Manager.new

upen = UnderLinePen.new '~'
manager.register 'strong message', upen
mbox1 = MessageBox.new '*'
manager.register 'warning box', mbox1
mbox2 = MessageBox.new '/'
manager.register 'slash box', mbox2

p1 = manager.create('strong message')
p2 = manager.create('warning box')
p3 = manager.create('slash box')

[p1, p2, p3].each do |p|
  p.use('Hello Ruby!')
end

#
# output
#
# Hello Ruby!
# ~~~~~~~~~~~
# ***************
# * Hello Ruby! *
# ***************
# ///////////////
# / Hello Ruby! /
# ///////////////
#
