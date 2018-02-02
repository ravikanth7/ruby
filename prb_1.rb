def numdf num
  return [1,0] if num == 0
  i = 0
  c = 1
  while num/c > 0 
    i = i+1
    l = num/c
    c = c*10
  end
  [i,l]
end

def rfnum num
  c = 10
  nnum = 0
  cnum = num/10
  while cnum != 0
     nnum = nnum+(num%10)*(c/10)
     c = c*10
     num = num/10
     cnum = cnum/10
  end
  nnum
end

def check num
 d,f = numdf num
 
 if num < ("4"*(d)).to_i
    ("4"*(d)).to_i
 elsif num >= ("7"*(d)).to_i
    ("4"*(d+1)).to_i
 elsif num >= ("4"+"7"*(d-1)).to_i && num <  ("7"+"4"*(d-1)).to_i
    ("7"+"4"*(d-1)).to_i
 elsif num == 4
    7
 elsif num < ("4"+"7"*(d-1)).to_i
    ("4"+check(rfnum(num)).to_s).to_i
 else 
    ("7"+check(rfnum(num)).to_s).to_i
 end
end

(0..10000).each do |x|
  p "#{x}::#{check(x)}"
end
