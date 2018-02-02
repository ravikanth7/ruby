def ss arr
  return arr if arr.count < 2
  for i in 0..arr.count-2
  	min = arr[i];
  	loc = i;

  	for j in i+1..arr.count-1
      if arr[j] < min
      	min = arr[j];
      	loc = j;
      end
  	end
  	arr[i], arr[loc] = min, arr[i]
  end
  arr
end

p ss [4,-6,1,2,0,9,-1,3]