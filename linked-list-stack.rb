
# Implement a stack using a linked list.
#

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end

  def to_s
    curr_node = self
    res = "["
    while curr_node.next_node != nil
      res = res + curr_node.value.to_s + ", "
      curr_node = curr_node.next_node
    end
    res = res + curr_node.value.to_s + "]"
    res
  end

end

class Stack
  attr_reader :head

  def initialize
    @head = nil
  end

  def push(value)
    new_head = Node.new value, @head
    @head = new_head
  end

  def pop
    @head = @head.next_node
  end
end

stack = Stack.new
stack.push 3
stack.push 5
stack.push 7
stack.pop
stack.push 8
print stack.head