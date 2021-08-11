def stock_picker(prices)
    return "input should be not empty array" if prices.empty?
    
    buy_days = prices.take(prices.length-1)
    sell_days = prices.drop(1)
    for day in days
        
    end
    
end

stock_picker([6, 7, 2, 1, 3, 4, 8, 10, 7, 8]