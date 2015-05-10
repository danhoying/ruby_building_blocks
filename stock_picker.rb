# STOCK PICKER

# Implements a method that takes an array of stock prices (one price per day) 
# and returns an array containing the best days to buy and sell.

def stock_picker(prices)
  index = 0
  lowest = 0
  best_value = []
  for i in prices
    for j in prices[index..prices.length-1]
      if i - j < lowest
        lowest = i - j # lowest will be equal to the greatest price difference (greatest negative number)
        min = prices.index(i) # index of buy date
        max = prices.index(j) # index of sell date
      end
    end
    index += 1 # increments each iteration to ensure sell dates cannot be past dates
  end          
  best_value << min
  best_value << max
  puts "#{best_value} If you buy on day #{min} and sell on day #{max},
       you will make $#{lowest.abs} profit."
end

price_array = [17, 3, 6, 9, 15, 8, 6, 1, 10]
stock_picker(price_array)