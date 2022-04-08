module Enumerable
  # Your code goes here
  def my_each_with_index
    return self unless block_given?

    for i in 0..self.length-1 do
      yield(self[i], i)
    end
    self
  end

  def my_select
    match = []
    for i in 0..self.length-1 do
      match.push(self[i]) if yield(self[i])
    end
    match
  end

  def my_all?
    answer = true
    for i in 0..self.length-1 do
      answer = false unless yield(self[i], i)
    end
    answer
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    return self unless block_given?

    for i in 0..self.length-1 do
      yield(self[i])
    end
    self
  end
end
