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

  def pop
    unless list == nil
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

  def reverse_list(list)
    list = Stack.new
    while @data != nil
        list.pop
    end
    list.push(12)
    list.push(99)
    list.push(37)
end
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)
