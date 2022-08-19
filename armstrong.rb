def is_armstrong?(n)
    r = n % 10
    q = n / 10
    acc = 0
    acc+=r**3
    while q >= 1 do
      r = q % 10
      q = q / 10
      acc + r ** 3
    end
    acc + q ** 3
    if n == acc 
      return true 
    else 
      return false
    end
  end 
  puts is_armstrong?(153)
  