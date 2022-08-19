def read_file
    filetext = File.readlines('seed.txt')
    filetext
end
def find(arr, n)
    low = 0
    high = arr.length - 1
    while low < high
        mid = (high - low + 1) / 2 + low
        if arr[mid].chomp.to_i == n
          return mid
        elsif arr[mid].chomp.to_i < n
          low = mid + 1
          mid = (high - low + 1) / 2 + low
          # puts "elsif : High - #{high} Low -  #{low} Mid - #{mid}"
        else
          high = mid - 1
          (high - low + 1) / 2 + low
          # puts "else :High - #{high} Low -  #{low} Mid - #{mid}"
        end
    end
    -1
  end 

arr = read_file
numbers = [-8, 3, 3300, 19999, 17351, 1989585, 4501046, 1281693, 50000000, 224867809, 225023761 , 500000000]  
numbers.each do |number|
  start_time = Time.now
  index = find(arr, number)
  duration = (Time.now - start_time).round(6)
  if (index >= 0)
    puts "The given number #{number} is found at the index #{index} at #{duration} seconds." 
    else 
    puts "The given number #{number} is not found at #{duration} seconds." 
  end
end




# arr = read_file()
# find(arr, 11)
# n = 11
# if (find(arr, n))
#     puts "The element #{n} is in index #{find(arr, n)}"
# else
#     puts "The element not found"

# end 





 # return index if present
    # return -1 if absent



    #   if n < 0 
      #     return -1
      # elsif n > (arr.length - 1).chomp.to_i
      #   return -1
            # j = (arr.length - 1) - i
        # return j if arr[j].chomp.to_i == n


      #   if n < 0
      #     return -1
      # elsif n > arr.last.chomp.to_i
      #   return -1
      # end


    #   if n < 0
    #     return -1
    #   elsif
    #     n > arr[arr.length - 1].chomp.to_i
    #     return -1
    #   else
    #     for i in 0..(arr.length-1) do
    #       # j = (arr.length - 1) - i
    #       # return j if arr[j].chomp.to_i == n
    #     return i if arr[i].chomp.to_i == n
    #       break if arr[i].chomp.to_i > n
    #     end  
    #   end
    #   -1
    # end 