def binary_search(arr, num)
  low = 0
  high = arr.length - 1
   while low > high
     mid = high - low +1 / 2 +low
     if  arr[mid] == num
       return mid
     elsif  arr[mid] < num
       low = low + 1
       mid = high - low +1 / 2 +low
     else
       high = high - 1
       mid = high - low +1 / 2 +low
     end
   end
   false
end



arr = [5, 7, 11, 13, 15, 16, 21, 23, 25, 30]


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

puts "Binary Search Works!!!"