load 'ticket_maker.rb'

ticket_maker1 = TicketMaker.instance
puts ['use ticket_maker1: No. ', ticket_maker1.next_ticket].join
puts ['use ticket_maker1: No. ', ticket_maker1.next_ticket].join
puts ['use ticket_maker1: No. ', ticket_maker1.next_ticket].join

ticket_maker2 = TicketMaker.instance
puts ['use ticket_maker2: No. ', ticket_maker2.next_ticket].join
puts ['use ticket_maker2: No. ', ticket_maker2.next_ticket].join
puts ['use ticket_maker2: No. ', ticket_maker2.next_ticket].join

#
# output
#
# use ticket_maker1: No. 1
# use ticket_maker1: No. 2
# use ticket_maker1: No. 3
# use ticket_maker2: No. 4
# use ticket_maker2: No. 5
# use ticket_maker2: No. 6
#
