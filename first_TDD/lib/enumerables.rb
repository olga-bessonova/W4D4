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
    (0..self.length-2).each do |i|
      (i+1..self.length-1).each do |j|
        res << [i,j] if self[i]+self[j] == 0
      end
    end
    return res
    #res.empty? ? [1] : res 
  end
end
