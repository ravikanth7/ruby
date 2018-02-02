def nbn num
  arr = num.to_s.split('').map{ |x| x.to_i }
  len = arr.length
  i = 1
  while i < len
    break if arr[-(i+1)] < arr[-(i)]
    i = i+1
  end
  
  return 'not possible' if i == len

  r1 = arr[-(i+1)]
  min = arr[-i]
  pos = len-i

  (len-i..len-1).each do |x|
    if arr[x] < min && arr[x] > r1
      min = arr[x] 
      pos = x
    end
  end
  
  arr[len-(i+1)],arr[pos] = arr[pos],arr[len-(i+1)]
  arr1 = arr.slice(0,len-(i))
  arr2 = arr.slice(len-(i),len).sort

  arr = arr1+arr2
  p arr
end

nbn 534976