def my_uniq(arr)
  hash = Hash.new(0)
  arr.each { |ele| hash[ele] += 1 }
  hash.keys
  #   arr.uniq
end

arr = [1, 2, 1, 3, 3]
