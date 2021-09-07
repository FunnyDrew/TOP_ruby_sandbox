require_relative "../myEnum"
describe "enumerable" do
    coll = [1,2,3,4,5,6,7]
    coll2 = [2,4,6,8]
    coll_not_even = [1,3,5,7]
    coll_string = %w(some new words i konw)
    it "select" do
        expect(coll.my_select {|n| n.even?}).to eq(coll.select {|n| n.even?})
    end

    it "all with range(1..7)" do
        expect(coll.all?{|n| n.even?}).to eq(coll.my_all?{|n| n.even?})        
    end

    it "all with even" do
        expect(coll2.all?{|n| n.even?}).to eq(coll2.my_all?{|n| n.even?})        
    end

    it "any even with range(1..7)" do
        expect(coll.my_any?{|n| n.even?}).to eq(coll.any?{|n| n.even?})
    end
    it "any even in not even array" do
        expect(coll_not_even.my_any?{|n| n.even?}).to eq(coll_not_even.any?{|n| n.even?})
    end

    it "none even in not even array" do
        expect(coll_not_even.my_none?{|n| n.even?}).to eq(coll_not_even.none?{|n| n.even?})
    end

    it "count without condition" do
        expect(coll.my_count).to eq(coll.count)
    end

    it "count even" do
        expect(coll.my_count{|n| n.even?}).to eq(coll.count{|n| n.even?})
    end

    it "my_map" do
        expect(coll.my_map{|item| "here is #{item}"}).to eq(coll.map{|item| "here is #{item}"})
    end

    it "my_inject" do
        expect(coll.my_inject{|item, acc| acc += item}).to eq(coll.inject{|item, acc| acc += item})
    end 
    
    it "my_inject with string" do
        expect(coll_string.my_inject{|item, acc| acc += item}).to eq(coll_string.inject{|item, acc| acc += item})
    end

    it "my_inject with init" do
        expect(coll.my_inject(1){|item, acc| acc += item}).to eq(coll.inject(1){|item, acc| acc += item})
    end

    it "my_inject with multiply" do
        expect([2,4,5].my_inject(1){|item, acc| acc *= item}).to eq([2,4,5].inject{|item, acc| acc *= item})
    end

    it "my_map with proc test" do
        proc = Proc.new {|item| "here is #{item}"}
        expect(coll.my_map2 proc).to eq(coll.map{|item| "here is #{item}"})
    end
    

end