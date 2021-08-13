def stock_picker(prices)
    return "input should be not empty array" if prices.empty?
    
    buy_days = prices.take(prices.length-1)
    sell_days = prices.drop(1)
    pricediff = []
    index = 0
    for day in buy_days
        sell_days = prices.drop(index+1)
        pricediff[index] = (sell_days.map {|item| item - day}).max
        index = index + 1
    end
    day_to_buy = pricediff.index(pricediff.max)
    days_to_sell = prices.drop(day_to_buy)
    day_to_sell = days_to_sell.index(days_to_sell.max) + day_to_buy
    [day_to_buy, day_to_sell]
end
