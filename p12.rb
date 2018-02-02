arr = [1,1,1,3,3,3,4,1,4,4,5]
narr = Array.new
farr = Array.new
str = String.new

arr.chunk{|x| x}.each{ |x,ary| ary.length > 1 ? narr.push([ary.length,x]) : narr.push(x)}

#puts narr.inspect
narr.each do |x|
  if (x.kind_of?(Array)) then
    str += x[1].to_s*x[0]
  else
    str += x.to_s
  end
end
#narr.map{|x| x.class == 'Array' ? str += x[1].to_s*x[0] : str += x.to_s}


puts str.split('').inspect

