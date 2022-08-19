# arr = [5, 7, 11, 13, 15, 16, 21, 23, 25, 30]
def binary_search(arr, n)
    low = 0
    high = arr.length - 1
     while low < high
       mid = high - low +1 / 2 +low
       if  arr[mid] == n
         return true
       elsif  arr[mid] < n
         low = low + 1
         mid = high - low +1 / 2 +low
       else
         high = high - 1
         mid = high - low +1 / 2 +low
       end
     end
     false
  end
  puts binary_search(arr, 35)
  