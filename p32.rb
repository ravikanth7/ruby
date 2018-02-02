num1 = 1071
num2 = 462

def gcd(n1,n2)
  if n1%n2 == 0
    return n2
  else
    gcd(n2,n1%n2)
  end
end

if num2 == 0 
  res = num1
elsif num1 == 0
  res = num2
elsif num2>num1
  num1, num2 = num2, num1
  res = gcd(num1,num2)
else
  res = gcd(num1,num2) 
end

puts res
