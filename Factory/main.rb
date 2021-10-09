load 'id_card/id_card_factory.rb'

id_card_factory = IDCardFactory.new

card1 = id_card_factory.create('Alice')
card2 = id_card_factory.create('Bob')
card3 = id_card_factory.create('Chris')

card1.use
card2.use
card3.use

puts id_card_factory.owners
