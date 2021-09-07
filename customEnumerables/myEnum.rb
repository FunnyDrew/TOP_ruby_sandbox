module Enumerable
    def my_each
        for item in self
            yield item
        end
    end

    def my_each_with_index
        i = 0
        for item in self
            yield item, i
            i += 1
        end        
    end

    def my_select
        res = []
        self.my_each do |item|
            res<<item if yield item
        end
        res
    end

    def my_all?
        res = true
        self.my_each do |item|
            res &&= (yield item)
        end
        res
    end

    def my_any?
        self.my_each {|item| return true if yield item}
        false
    end

    def my_none?
        self.my_each {|item| return true if !(yield item)}
        false
    end

    def my_count
        return self.length if !block_given?
        res = 0
        self.my_each {|item| res += 1 if (yield item)}
        res
    end

    def my_map
        res = []
        self.my_each{|item| res<<(yield item)}
        res
    end

    def my_inject(*arg)
        map = {Integer => 0, String => "", Array => [], Hash => {}}
        acc = arg.empty? ? map[self.first.class] : arg.first                    
        self.my_each do |item|
            acc = yield acc, item
        end
        acc
    end

    def my_map2(proc)
        res = []
        self.my_each{|item| res<<(proc.call item )}
        res
    end

end

