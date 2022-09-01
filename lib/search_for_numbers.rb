require_relative './binary_search_recursion.rb'


arr = [10, 11, 13, 14, 17, 21, 23, 27, 29, 30]

arr.each_with_index do |n, i|
    if(i != binary_search(arr, n))
      raise "Error: Failed to correctly find #{n}"
    end
end
  
# out of range
  [4, 32].each do |n|
    if(-1 != binary_search(arr, n))
      raise "Error: Did not return -1 for number #{n}"
    end
end
  
  
# In Range, non-existent
[1, 8, 22, 2].each do |n|
    if(-1 != binary_search(arr, n))
      raise "Error: Did not return -1 for number #{n}"
    end
end

   
  puts "Binary Search Works for numbers!!!"


