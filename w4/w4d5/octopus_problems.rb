def sluggish(arr)
    longest = ""
    (0...arr.length-1).each do |i|
        (i+1..rr.length-1).each do |j|
            longest = arr[j] if arr[j].length > arr[i].length
        end
    end
    return longest

end

class Array
    def merge_sort(&prc)
        prc ||= Proc.new{|a,b| a <=> b}

        return self if self.length <= 1
        mid = self.length/2

        left_sorted = self.take(mid).merge_sort(&prc)
        right_sorted = self.drop(mid).merge_sort
        Array.merge(left_sorted, right_sorted, &prc)

    end

    def merge(left, right, &prc)
        merged = []

        until left.empty || right.empty
            case prc.call(left.first, right.first)
            when -1
                merged << left.shift
            when 0
                merged << left.shift
            when 1
                merged << right.shift
            end
        end
        merged.concat(left)
        merged.concat(right)
        merged
    end

end

