# n size queue implemented using array
class Queue

  private

  attr_accessor :queue, :head, :tail

  public

  def initialize(size)
    self.queue = Array.new size + 1 # use one extra space to fulfil size n
    self.head = self.tail = 0
  end

  def enqueue(element)
    raise "queue overflow" if full?
    queue[tail] = element
    self.tail = (tail + 1) % queue.length
    true
  end

  def dequeue
    raise "queue underflow" if empty?
    self.head = (head + 1) % queue.length
    queue[head - 1]
  end

  def empty?
    head == tail
  end

  def full?
    (tail + 1) % queue.length == head
  end

end
