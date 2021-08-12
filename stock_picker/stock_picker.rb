def stock_picker(prices)
    return "input should be not empty array" if prices.empty?
    
    buy_days = prices.take(prices.length-1)
    sell_days = prices.drop(1)
    pricediff = {}
    index = 0
    for day in buy_days
        sell_days = prices.drop(i+1)
        pricediff[index] = sell_days - day 
    end
    
end

stock_picker([6, 7, 2, 1, 3, 4, 8, 10, 7, 8]