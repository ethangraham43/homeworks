class Stack
    attr_reader :ivar
    def initialize
      @ivar = Stack.new
    end

    def push(el)
      ivar << el
    end

    def pop
      self.pop
    end

    def peek
      self[0]
    end
  end