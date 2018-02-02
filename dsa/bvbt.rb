class Node
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
  end
end

class Tree
  attr_accessor :head

  def lot
    return nil if @head == nil
    queue = []
    arr = []
    queue.push([@head,0])

    while queue.length > 0
      ele1 = queue[0]
      queue = queue.slice(1,queue.length)
      arr << [ele1[0].val,ele1[1]] if ele1[0].left == nil && ele1[0].right == nil
      queue.push([ele1[0].left,ele1[1]-1]) if ele1[0].left
      queue.push([ele1[0].right,ele1[1]+1]) if ele1[0].right
    end
    p arr
  end
end

t = Tree.new()
t.head = Node.new(20)
t.head.left = Node.new(8)
t.head.right = Node.new(22)
t.head.left.left = Node.new(5)
t.head.left.right = Node.new(3)
t.head.right.left = Node.new(4)
t.head.right.right = Node.new(25)
t.head.left.right.left = Node.new(10)
t.head.left.right.right = Node.new(14)

t.lot