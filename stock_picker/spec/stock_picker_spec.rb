require_relative "../stock_picker"

describe "StockPiker" do
    it "empty input" do
        expect(stock_picker([])).to eq("input should be not empty array")
    end

    it "sipmple example" do
        expect(stock_picker([6, 7, 2, 1, 3, 4, 8, 10, 7, 8])).to eq([3, 7])
    end
    
    it "case one" do
        expect(stock_picker([10, 5,3,7, 8, 9, 7, 6, 5,1])).to eq([2, 5])
    end

    it "odin pro case" do
        expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1, 4])
    end
end