def bbs arr
	return arr if arr.count < 2
	for i in 0..arr.count-2
		sw = false
		for j in 0..arr.count-2-i
			if arr[j] > arr[j+1]
				arr[j], arr[j+1] = arr[j+1], arr[j]
				sw = true
			end
		end
		if(!sw)
			break 
		end
	end
	arr
end

p bbs [4,-6,1,2,0,9,-1,3]