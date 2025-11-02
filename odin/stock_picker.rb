def stock_picker(prices)
  min_price = prices[0]
  min_index = 0
  max_profit = 0
  buy_day = 0
  sell_day = 0

  prices.each_with_index do |price, index|
    if price - min_price > max_profit
      max_profit = price - min_price
      buy_day = min_index
      sell_day = index
    end

    if price < min_price
      min_price = price
      min_index = index
    end
  end

  p [buy_day, sell_day]
end