=begin
> stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12
=end

def stock_picker(stocks)
  max_prof = 0
  final_buy = 0
  final_sell = 0
  stocks.each do |stock|
    puts stock
    buy = stock
    for i in 1..stocks.length
      index = i
      puts stocks[index]
      sell = stocks[index]
      if sell - buy > max_prof
        max_prof = sell - buy
        final_buy = stocks.index(buy)
        final_sell = stocks.index(sell)
      end
    end
    stocks.shift[stock]
  end
  puts final_buy, final_sell
end
stock_picker([17,3,6,9,15,8,6,1,10])
