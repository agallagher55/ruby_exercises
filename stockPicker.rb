prices = [17,3,6,9,15,8,6,1,10]

def stockPicker(price_array)

    results = {}

    # def buySellHash()
    for i in 0..(price_array.length - 2) #Cant sell on last day

        buyDay = i + 1
        buyPrice = price_array[i]
        # puts "When Buy Price is: $#{price_array[i]}"

        # Best Sell Price --> highest of remaining numbers in array
        bestSellPrice = price_array[(i+1)..(price_array.length - 1)].max 
        # puts "\tBest Price in Remaining Array: $#{bestSellPrice}"
        
        bestSellDay = price_array.index(bestSellPrice) + 1
        # puts "\tSell Day: #{bestSellDay}"

        profit = bestSellPrice - buyPrice
        # puts "\t\t**Profit: $#{profit}"
        
        # Add result to results hash --> buyDay: bestSellDay, Profit
        results[0] = ["bestSellDay", "bestSellPrice", "profit", "buyPrice"]
        results[buyDay] = bestSellDay, "$" + bestSellPrice.to_s, "$" + profit.to_s, buyPrice.to_s + "$"

    end

    # puts results
    # puts
    # results.each do |key, value|
    #     puts "Day #{key}: #{value}"
    # end

    maxProfit = -999
    for value in results.values
        profit = value[2].gsub("$", "").to_i
        if profit > maxProfit
            maxProfit = profit 
            maxProfit_Day = value[0]
            bestBuyDay = results.key([value[0], value[1], value[2], value[3]])
        end
    end


    # Day that corresponds to max profit??
    puts "\nMax Profit: $#{maxProfit};\n\t Buy on day: #{bestBuyDay} ==> Sell on day: #{maxProfit_Day}"

    # RETURN - maxProfit_Day, day corresponding to 
    return [bestBuyDay, maxProfit_Day]
end

stockPicker(prices)