
class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

x = Stack.new

p

class Queue
   def initialize
    @queue = []
   end

   def enqueue(el)
     @queue.push(el)
   end

   def dequeue(el)
     @queue.shift
   end

   def show
     @queue.dup
   end
end


class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    @map.each do |subarr|
      if subarr[0] == key
        subarr[1] = value
      else
        subarr[key] = value
      end
    end
  end

  def lookup(key)
    @map.each do |subarr|
      if subarr[0] == key
        return subarr[1]
      end
    end
  end

  def remove(key)
    @map.reject! { |sub| sub[0] == key}
  end

  def show
    deep_dup(@map)
  end

  def deep_dup
    arr.map { |el| el.is_a? Array : deep_dup(el) : el}
  end

end
