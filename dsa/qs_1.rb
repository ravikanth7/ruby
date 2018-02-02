def qs arr
  return arr if arr.count < 2
  piv = arr[-1]
  la = arr.map {|x| x if x < piv}.compact 
  ha = arr.map {|x| x if x > piv}.compact
  return qs(la)+[piv]+qs(ha)
end

p qs [4,-6,1,2,0,9,-1,3]