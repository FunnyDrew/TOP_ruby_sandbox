require_relative "../stock_picker"

describe "StockPiker" do
    it "empty input" do
        expect(stock_picker([])).to eq("input should be not empty array")
    end

    it "sipmple example" do
        expect(stock_picker([6, 7, 2, 1, 3, 4, 8, 10, 7, 8])).to eq([3, 7])
    end 
end