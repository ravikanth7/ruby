def sprialprint arr
  #row limits
  m = arr.length
  k = 0
  
  #column limits
  n = arr[0].length
  l = 0

  while l < n && k < m
    (l..n-1).each do |i|
      p arr[k][i]
    end
    k = k+1
    (k..m-1).each do |i|
      p arr[i][n-1]
    end
    n = n-1
    if k < m
      (n-1).downto(l).each do |i|
        p arr[m-1][i]
      end
      m = m-1
    end    
    if l < n
      (m-1).downto(k).each do |i|
        p arr[i][l]
      end
      l = l+1
    end
  end

end

arr = [[1,  2,  3,  4,  5,  6],[7,  8,  9,  10, 11, 12],[13, 14, 15, 16, 17, 18]]
sprialprint arr