class Stack
    attr_reader :ivar
    def initialize
      array = []
    end

    def push(el)
      array.push(el)
      el
    end

    def pop
      array.pop
    end

    def peek
      array.last
    end
end

class Queue
    def initialize
    end

    def enqueue(el)
    end

    def dequeue
    end

    def peek
    end
end

class Map

end
