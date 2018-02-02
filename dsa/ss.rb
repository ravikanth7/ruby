def ss array
  sa = []
  ac = array.count 
  while sa.count < ac
    max = array[0]
    array.each do |x|
      if x > max
         max = x
      end     
    end
    sa.push(max)
    array.delete_at(array.index(max))   
  end

  sa

end

p ss [4,-6,1,2,0,9,-1,3]
