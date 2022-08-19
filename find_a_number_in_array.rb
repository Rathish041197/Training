#to find a element in a array
arr = [1, 2, 4, 5, 7, 9, 10]
def find(arr, number)
  for i in 0..arr.length do
    return i if arr[i] == number
  end
  -1
end
puts find(arr, 2)