class Node
  attr_accessor :next_node
  attr_accessor :value

  def initialize(value)
    @value = value
  end
end

class MyLinkedList
  attr_reader :head
  attr_reader :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new(value)
    if @head == nil
      @head = node
      @tail = @head
    else
      @tail.next_node = node
      @tail = node
    end
    self
  end

  def prepend(value)
    if @head == nil
      @head = Node.new(value)
      @tail = @head
    else
      node = Node.new(value)
      node.next_node = @head
      @head = node
    end
    self
  end

  def size
    tmp = @head
    count = 0
    until tmp.nil?
      count += 1
      tmp = tmp.next_node
    end
    count
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def to_s
    tmp = @head
    s = ""
    until tmp == nil
      s << "(#{tmp.value}) -> "
      tmp = tmp.next_node
    end
    s << 'nil'
  end
end
