require_relative 'node'

class LinkedList
  attr_accessor :head,:tail,:size

  def initialize()
    @head = nil
    @tail = nil
    @size = 0
  end
  def append(value)
    @size += 1
    if @tail == nil
      @tail = Node.new(value,nil)
    else
      @tail.next_node = Node.new(value,nil)
      @tail = @tail.next_node
    end
    @head = @tail if @head == nil
  end
  def prepend(value)
    @size += 1
    if @head == nil
      next_node = nil
    else
      next_node = @head
    end
    @head = Node.new(value,next_node)
  end

  def each
    current_node = @head
    until current_node.nil?
      yield(current_node) if block_given?
      current_node = current_node.next_node
    end
  end

  def each_with_index
    return self unless block_given?
    index = 0
    self.each do |variable|
      yield(variable, index)
      index += 1
    end
  end
  def at(index)
    index = @size + index if index < 0
    return "bad input" if index > @size || index < 0
    self.each_with_index {|node,current_index| return node if current_index == index}
  end
  def pop
    self.at(-2).next_node = nil
    @tail = self.at(-2)
  end
  def contains?(value) 
    return true if self.each{|node| return true if node.value == value}
    false
  end
  def find(value)
    self.each_with_index {|node,index| return index if value == node.value}
  end
  def to_s
    self.each do |node|
      if node.value !=  nil
        print "(#{node.value}) -> "
      else 
        print "#{node.value}\n"
      end
    end
  end
  def insert_at(value,index)
    before_node = at(index - 1)
    old_node = at(index)
    new_node = Node.new(value,old_node)
    before_node.next_node = new_node
    @size += 1
  end
  def remove_at(index)
    before_node = at(index - 1)
    old_node = at(index)
    before_node.next_node = old_node.next_node
  end
end
