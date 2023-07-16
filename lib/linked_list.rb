require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # your code here
   length = 0
   node = head
   until node.nil?
    node = node.next_node
    length += 1
   end

   return nil if n < 1 || n > length

   i = length - n

   node = head
   
   i.times do
    node = node.next_node
   end

   node.value
  end

end
