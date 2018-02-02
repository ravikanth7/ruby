def bs ar,el,l=nil,h=nil
  l = 0 if l == nil
  h = ar.count-1 if h == nil

  mid = (l+h)/2

  return mid if el == ar[mid]
  return 'Not Avaliable' if l >= h

  if el > ar[mid]
     return bs ar,el,mid+1,h
  else  
     return bs ar,el,l,mid-1
  end

end

p bs [1,3,5,7,9,11,13,15],10