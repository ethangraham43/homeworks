require "set"

class GraphNode
    attr_reader :node
    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def add_neighbor(node)
        self.neighbors << 
    end
end

def bfs(starting_node, target_value)
    queue = [starting_node]
    seen = Set.new()

    until queue.empty?
        cur_node = queue.shift
        if !seen.include?(cur_node)
            if cur_node.value == target_value
                return cur_node.val
            end
            seen << cur_node
            queue.concat(cur_node.children)
        end
    end
    nil
end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]