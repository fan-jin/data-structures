# double ended queue allowing insertion and deletion at both ends
class Deque

  private

  attr_accessor :queue, :head, :tail

  public

  def initialize(size)
    self.queue = Array.new size + 2
    self.head = 0
    self.tail = head + 1
  end

  def enqueue_head(element)
    raise "deque overflow" if full?
    queue[head] = element
    self.head = (head - 1) % queue.length
    true
  end

  def enqueue_tail(element)
    raise "deque overflow" if full?
    queue[tail] = element
    self.tail = (tail + 1) % queue.length
    true
  end

  def dequeue_head
    raise "deque underflow" if empty?
    self.head = (head + 1) % queue.length
    queue[head]
  end

  def dequeue_tail
    raise "deque underflow" if empty?
    self.tail = (tail - 1) % queue.length
    queue[tail]
  end

  def full?
    (tail + 1) % queue.length == head
  end

  def empty?
    (head + 1) % queue.length == tail
  end

end
