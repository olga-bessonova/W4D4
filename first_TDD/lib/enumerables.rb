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
  res = []
  days = []
  (0...arr.length - 1).each do |i|
    (i + 1...arr.length).each do |j|
      res << arr[j] - arr[i]
      days << [i, j]
    end
  end
  index_of_max = res.each_with_index.max[1]
  days[index_of_max]
end

p stock_picker([200, 250, 100])
