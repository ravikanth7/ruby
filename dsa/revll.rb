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

   def reverse head,k
    x1 = @head
    x2 = x1.next
    while x2 != nil
      x1.next = x2.next
      x2.next = @head
      @head = x2
      x2 = x1.next
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


a.reverse a.head,3
# head = a.head
# current = head.next
# nextt = head.next.next

# p a

# head.next.next = head
# head.next = nextt
# head = current

p a
