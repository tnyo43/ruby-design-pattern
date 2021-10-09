require 'singleton'

class TicketMaker
  include Singleton

  def initialize
    @ticket_number = 0
  end

  def next_ticket
    @ticket_number += 1
  end
end
