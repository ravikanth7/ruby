def gcd(n1,n2)
  if n1%n2 == 0
    return n2
  else
    gcd(n2,n1%n2)
  end
end

def phi(m)
 res = 0
 (1...m).each {|x| res +=1 if gcd(m,x) == 1}
 return res 
end

re = phi(79)
puts re
