def stock_picker(prices)
  best_buy_index = 0
  best_sell_index = 1
  profit = 0

  (0...prices.length).each do |buy_index|
    (buy_index + 1...prices.length).each do |sell_index|
      if prices[sell_index] - prices[buy_index] > profit
        best_buy_index = buy_index
        best_sell_index = sell_index
        profit = prices[best_sell_index] - prices[buy_index]
      end
    end
  end

  [best_buy_index, best_sell_index]
end
