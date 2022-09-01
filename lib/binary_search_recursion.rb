# a = [10, 11, 13, 14, 17, 21, 23, 27, 29, 30]
def binary_search(objects, search_obj, low = 0, high = objects.length - 1)
  mid = ( high - low + 1 )/2 + low
  return -1 if low > high
  case objects[mid] <=> search_obj
  when 0
    return mid
  when -1
    low = mid + 1 
    return binary_search(objects, search_obj, low, high)
  else
    high = mid - 1
    return binary_search(objects, search_obj, low, high)
  end
end 

# arr = [10, 11, 13, 14, 17, 21, 23, 27, 29, 30]

# arr.each_with_index do |n, i|
#     if(i != binary_search(arr, n))
#       raise "Error: Failed to correctly find #{n}"
#     end
# end
  
# # out of range
#   [4, 32].each do |n|
#     if(-1 != binary_search(arr, n))
#       raise "Error: Did not return -1 for number #{n}"
#     end
# end
  
  
# # In Range, non-existent
# [1, 8, 22, 2].each do |n|
#     if(-1 != binary_search(arr, n))
#       raise "Error: Did not return -1 for number #{n}"
#     end
# end

   
#   puts "Binary Search Works for numbers!!!"



# names = ["abi", "anish", "benson", "jack", "karthik", "rathish", "sam", "shree" "varun", "varshini"]



# names.each_with_index do |n, i|
#   if(i != binary_search(names, n))
#     raise "Error: Failed to correctly find #{n}"
#   end
# end
  
# # out of range
# ['aarthi', 'zahir'].each do |n|
#   if(-1 != binary_search(names, n))
#     raise "Error: Did not return -1 for number #{n}"
#   end
# end
  
  
# # In Range, non-existent
# ['sathish', 'hari'].each do |n|
#     if(-1 != binary_search(names, n))
#       raise "Error: Did not return -1 for number #{n}"
#     end
# end

   
# puts "Binary Search Works for strings!!!"

# class Student
#   attr_reader :name, :age, :dob, :rollno, :pincode
#   def initialize(rollno, name, age, dob, pincode)
#     @rollno = rollno
#     @name = name
#     @dob = dob
#     @age = age
#     @pincode = pincode
#   end

#   def <=> (rhs)
#      self.rollno <=> rhs.rollno
#   end
# end 

# students_data = [
#   [1, "abi", 21, "1/1/2001", 643112], 
#   [4, "benson", 22, "2/5/2000", 643551],
#   [7, "catherine", 23, "6/3/1999", 643155],
#   [9, "jack", 24, "7/7/1998", 643142],
#   [10, "lokesh", 21, "8/12/2001", 643889],
#   [11, "rathish", 25, "4/11/1997", 643209], 
#   [14, "roshan", 25, "5/12/1997", 643219], 
#   [18, "rozario", 26, "31/10/1995", 643141],
#   [29, "varun", 26, "28/09/1995", 643481],
#   [30, "vikram", 27, "10/09/1994", 643191]
# ]
# students = students_data.map { |st|
#   Student.new(st[0], st[1], st[2], st[3], st[4])
# }

# students.each_with_index do |student, i|
#   if(i != binary_search(students, student))
#     raise "Error: Failed to correctly find #{student}"
#   end
# end

  
# # out of range
# [0, 32].each do |rollno|
#   student = Student.new(rollno, nil, nil, nil, nil)
#   if(-1 != binary_search(students, student))
#     raise "Error: Did not return -1 for number #{student}"
#   end
# end
  
  
# # In Range, non-existent
# [2, 13].each do |rollno|
#   student = Student.new(rollno, nil, nil, nil, nil)
#   if(-1 != binary_search(students, student))
#       raise "Error: Did not return -1 for number #{student}"
#     end
# end

# puts "Binary Search Works for students!!!"

