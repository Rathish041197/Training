#sum of even number in recursion

def sum_of_even(n)
    return 0 if n < 1 
    if (n >= 1)
      return(n*2) + sum_of_even(n-1)
    end
  end
  puts sum_of_even(10)




#binary search using recursion

  a = [10, 11, 13, 14, 17, 21, 23, 27, 29, 30]
def binary_search(a, n, low = 0, high = a.length - 1)
  mid = ( high - low + 1 )/2 + low
  return -1 if low > high
  if a[mid] == n
    return mid
  elsif a[mid] < n
    low = mid + 1 
    return binary_search(a,n,low,high)
  else
    high = mid - 1
    return binary_search(a,n,low,high)
  end
end
puts binary_search(a, 30)


#armstrong number using recursion
def sum(number)
    if(number > 0)
      return((number % 10)**3) + sum(number/10)
    end
    return 0
  end
  def  is_armstrong?(number)
    n=sum(number)
    if number == n
      puts "the given number is armstrong"
    else
      puts"the given number is not armstrong"
    end
  end
  puts is_armstrong?(153)