require_relative './binary_search_recursion.rb'

names = ["abi", "anish", "benson", "jack", "karthik", "rathish", "sam", "shree" "varun", "varshini"]



names.each_with_index do |n, i|
  if(i != binary_search(names, n))
    raise "Error: Failed to correctly find #{n}"
  end
end
  
# out of range
['aarthi', 'zahir'].each do |n|
  if(-1 != binary_search(names, n))
    raise "Error: Did not return -1 for number #{n}"
  end
end
  
  
# In Range, non-existent
['sathish', 'hari'].each do |n|
    if(-1 != binary_search(names, n))
      raise "Error: Did not return -1 for number #{n}"
    end
end

   
puts "Binary Search Works for strings!!!"
