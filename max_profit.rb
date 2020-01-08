# Best Time to Buy and Sell Stock II
# Say you have an array for which the iTh element is the price of a given stock on day i.
# Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).
price_list = [3, 6, 7, 4, 5]
def max_profit(prices)
    count = 0
    while count < prices.length
        l = -1
        i = 0
        diff = prices[i] - prices[l]
        # increment indexes and counter
        i = i + 1
        l = l - 1
        count = count + 1
        p diff
    end
end

max_profit(price_list)