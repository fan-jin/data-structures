# n size stack implemented using array
class Stack

  private

  attr_accessor :stack, :top

  public

  def initialize(size)
    self.stack = Array.new size
    self.top = 0
  end

  def push(element)
    raise "stack overflow" if full?
    stack[top] = element
    self.top = top + 1
    true
  end

  def pop
    raise "stack underflow" if empty?
    self.top = top - 1
    stack[top]
  end

  def empty?
    top == 0
  end

  def full?
    top == stack.length
  end

end
