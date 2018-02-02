def merge a1,a2
  l1 = 0
  l2 = 0
  a3 = []
  while l1 < a1.count && l2 < a2.count
    if a1[l1] <= a2[l2]
	    a3.push(a1[l1])
	    l1 = l1+1
    else
	    a3.push(a2[l2])
	    l2 = l2+1    	
    end
  end
  while l1 < a1.count
    a3.push(a1[l1])
    l1 = l1+1
  end
  while l2 < a2.count
    a3.push(a2[l2])
    l2 = l2+1
  end  
  a3
end

def ms arr
   return arr if arr.count < 2
   max = arr.count-1
   mid = (max)/2
   a1 = ms(arr[0..mid ])
   a2 = ms(arr[mid+1..max])
   a3 = merge a1,a2
end

p ms [4,-6,1,2,0,9,-1,3]