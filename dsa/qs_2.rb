def part arr,a,b
  l = a
  r = b-1
  piv = arr[b]

  while true
    while arr[l] < piv
      l = l+1
    end
    while r > 0 && arr[r] > piv
      r = r-1
    end
    if l >= r
      break
    else
      arr[l],arr[r] = arr[r],arr[l] 
    end      
  end
  arr[l],arr[b] = arr[b],arr[l]
  return l
end  

def qs arr,i,j
  return if j-i <= 0

  parti = part(arr,i,j)
  qs(arr,i,parti-1)
  qs(arr,parti+1,j)
  arr
end

p qs [4,-6,1,2,0,9,-1,3],0,7
