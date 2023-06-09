
# Reverse a linked list given its head.
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

def reverse_list(curr)
  return curr if curr == nil or curr.next_node == nil

  next_node = curr.next_node
  new_head = reverse_list(curr.next_node)
  next_node.next_node = curr
  curr.next_node = nil
  return new_head
end

head = Node.new 8, nil
snd1 = Node.new 7, nil
snd2 = Node.new 6, nil
head.next_node = snd1
snd1.next_node = snd2

puts reverse_list(head)