class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end


class Stack
  attr_reader :data

  def initialize
      @data=nil
  end

  def push(value)
     new_node = LinkedListNode.new(value, @data)
     @data = new_node
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
    unless list == nil
      x = @data
      @data = data.next_node
      return list.value
    end
  end
end

  def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end

  def reverse_list(list, last=nil)
    head = list.next_node
    list.next_node = last
    if head
      reverse_list(head, list)
    else
      list
    end
  end
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)



# node1 = LinkedListNode.new(102)
# node2 = LinkedListNode.new(100, node1)
# node3 = LinkedListNode.new(99)
# node3.next_node = node2
# print_values(node3)