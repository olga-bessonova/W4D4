def my_uniq(arr)
  hash = Hash.new(0)
  arr.each { |ele| hash[ele] += 1 }
  #arr[0]=3
  hash.keys

  #   arr.uniq
end

#arr = [1, 2, 1, 3, 3]

class Array
  def two_sum
    res = []
    (0..self.length - 2).each do |i|
      (i + 1..self.length - 1).each do |j|
        res << [i, j] if self[i] + self[j] == 0
      end
    end
    return res
    #res.empty? ? [1] : res
  end

  def my_transpose
    raise NotImplementedError if self.length != self[0].length
    res = Array.new(self.length) { Array.new(self.length) }
    (0..self.length - 1).each do |r|
      (0...self.length).each do |c|
        res[c][r] = self[r][c]
      end
    end
    res
  end
end

def stock_picker(arr)
  raise "Not an Array" if !arr.is_a?(Array)
  res = []
  days = []
  (0...arr.length - 1).each do |i|
    (i + 1...arr.length).each do |j|
      res << arr[j] - arr[i]
      days << [i, j]
    end
  end

  if res.each_with_index.max[0] >= 0
    index_of_max = res.each_with_index.max[1]
    days[index_of_max]
  else
    nil
  end
end

# def orig_pick_stocks(prices)
#   # can always make zero dollars by not buying/selling
#   best_pair = nil
#   best_profit = 0

#   prices.each_index do |buy_date|
#     prices.each_index do |sell_date|
#       # can't sell before buy
#       next if sell_date < buy_date

#       profit = prices[sell_date] - prices[buy_date]
#       if profit > best_profit
#         # Choose best days. Greed is good.
#         best_pair, best_profit = [buy_date, sell_date], profit
#       end
#     end
#   end

#   best_pair
# end

# arr = [100,300,500,400,1000000,65,7]
# arr2 = [3, 2, 5, 0, 6]
# p stock_picker([200, 250, 100])
# #p stock_picker('apple')
# p orig_pick_stocks([200, 250, 100])
# p 'yayayaya'
# p stock_picker(arr2)
# p orig_pick_stocks(arr2)



