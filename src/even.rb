require 'byebug'

class Util 
  def self.select(arr)
    even = []
    for element in arr
      byebug
      if block_given?    
      even << arr[element] if yield(element)
      end
      even
    end
    
  end 
end
arr = [23, 40, 60, 80]
res = Util.select(arr){|i| i % 2 == 0}
print res
