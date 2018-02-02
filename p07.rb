#$narr = []

#class Flat

#   @@narr = Array.new

def flat_array(arr)
  narr = []
  arr.each do |x|
    if (x.kind_of?(Array)) then
#      puts 1
       narr += flat_array(x)
#        flat_array(x)
    else
#      puts x
      narr.push(x)
    end
  end
  narr
end

#end

nested = [1, [2, [3, 4]], 5]
#p nested.flatten
puts flat_array(nested).inspect 

