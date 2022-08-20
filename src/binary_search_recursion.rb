# a = [10, 11, 13, 14, 17, 21, 23, 27, 29, 30]
def binary_search(students, name, low = 0, high = students.length - 1)
  mid = ( high - low + 1 )/2 + low
  return -1 if low > high
  case students[mid] <=> name
  when 0
    return mid
  when -1
    low = mid + 1 
    return binary_search(students,name,low,high)
  else
    high = mid - 1
    return binary_search(students,name,low,high)
  end
end 

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



students = ["abi", "anish", "benson", "jack", "karthik", "rathish", "sam", "shree" "varun", "varshini"]



students.each_with_index do |n, i|
    if(i != binary_search(students, n))
      raise "Error: Failed to correctly find #{n}"
    end
  end
  
  # out of range
  ['aarthi', 'zahir'].each do |n|
    if(-1 != binary_search(students, n))
      raise "Error: Did not return -1 for number #{n}"
    end
  end
  
  
  # In Range, non-existent
  ['sathish', 'hari'].each do |n|
    if(-1 != binary_search(students, n))
      raise "Error: Did not return -1 for number #{n}"
    end
  end

   
  puts "Binary Search Works for strings!!!"
