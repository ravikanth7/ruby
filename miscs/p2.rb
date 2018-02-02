 # arr = [[7,8],[52,80],[57,64],[74,78]]
# arr = [[1,880],[1,52]]
arr = [[52,81]]

def countNumbers (arr)
  arr.each do |elm|
    cnum (elm)
  end
end

def cnum (elm)
    res = ccnum(elm[1])
    # res = res+1 if elm[0].to_s.split('').uniq.length == elm[0].to_s.split('').length
    # puts res
    res
end

def ccnum (elm)
  count = elm.to_s.split('').length
  firnum = elm.to_s.split('')[0].to_i
  
  p firnum
  p count

  if count > 9
    count = 10
  end

  s = firnum
  i = 9

  while count > 1
    s = s*i
    i = i-1
    count = count - 1
  end
  p s
  count = elm.to_s.split('').length

  if count > 1
    z = (firnum.to_s+"0"*(count-1)).to_i
    p [z,elm]
    # s = s + cnum([z,elm])
  else
    s = firnum+1    
  end
    # p s
end

countNumbers arr