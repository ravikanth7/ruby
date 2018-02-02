arr = [1,1,1,3,3,3,4,1,4,4,5]
str = String.new

arr.each do |x|
    str += x.to_s*2
end

puts str.split('').inspect
