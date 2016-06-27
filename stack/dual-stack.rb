# two stacks in a single array of size n
# the stacks overflow if and only if the total number of elements are n
class DualStack
  private

  attr_accessor :stack, :first_top, :second_top

  public

  def initialize(size)
    self.stack = Array.new size
    self.first_top = 0
    self.second_top = stack.length - 1
  end

  def empty?
    empty_first? && empty_second?
  end

  def empty_first?
    first_top == 0
  end

  def empty_second?
    second_top == stack.length - 1
  end

  def full?
    first_top - 1 == second_top || second_top + 1 == first_top
  end

  def push_first(element)
    raise "stack overflow" if full?
    stack[first_top] = element
    self.first_top = first_top + 1
    true
  end

  def push_second(element)
    raise "stack overflow" if full?
    stack[second_top] = element
    self.second_top = second_top - 1
    true
  end

  def pop_first
    raise "stack underflow" if empty_first?
    self.first_top = first_top - 1
    stack[first_top]
  end

  def pop_second
    raise "stack underflow" if empty_second?
    self.second_top = second_top + 1
    stack[second_top]
  end

end
