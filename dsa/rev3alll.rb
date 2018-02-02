class Node
  attr_accessor :val, :next
  def initialize(val)
    @val = val
  end
end

class LinkedList
  attr_accessor :head
  
  def add(val)
    node = Node.new(val)
    if @head == nil
      @head = node 
    else  
      endnode = @head
      while endnode.next != nil
        endnode = endnode.next
      end
      endnode.next = node
    end 
  end

  def reverse
    prev = nil
    curr = @head
    while curr != nil
      nxt = curr.next
      curr.next = prev
      prev = curr
      curr = nxt
      @head = prev   
    end
  end

    def recrev h,s
        if s.next == nil
            return self
        else
            nxt = s.next
            s.next = nxt.next
            nxt.next = h
            h = nxt
            @head = nxt
            return recrev h,s
        end
    end

    def rev3al
      curr = @head
      i = 3
      j = 3

      while curr.next != nil
          while i != 0 && curr.next != nil
              prev = curr
              curr = curr.next
              i = i-1
          end

          pp = nil
          nn= curr
          
          while j != 0 && curr.next != nil
              nxt = curr.next
              curr.next = pp
              pp = curr
              curr = nxt
              j = j -1
          end
          p curr
          p pp
          p prev
          p nn
          exit
          prev.next = pp
          nn.next = curr
          i = 3
          j = 3
      end

    end
end

a = LinkedList.new()
a.add(1)
a.add(2)
a.add(3)
a.add(4)
a.add(5)
a.add(6)
a.add(7)
a.add(8)
a.add(9)

a.rev3al
