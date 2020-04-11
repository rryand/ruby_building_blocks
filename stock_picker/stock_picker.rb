def stock_picker(stock_prices)
    profit = 0
    ideal_days = []
    stock_prices.each_with_index do |price1, index1|
        stock_prices.each_with_index do |price2, index2|
            if (price2 - price1) > profit && index1 < index2
                profit = price2 - price1
                ideal_days = [index1, index2]
            end
        end
    end
    puts ideal_days.empty? ? "Don't buy!" : "#{ideal_days} for a profit of $#{profit}."
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([7,6,5,4,3,2,1])
stock_picker([10,1,7,9,11,17,9])
stock_picker([1,2,3,6,9,1,0])