arr = [1,2,3,4,5,6,7,8,9]

#k = 4
$farr = []
class Combn
def initialize
  @farr = []
end
def comb(arr,num,narr=[])
   if num == 0
     narr = []
   elsif num == 1
     arr.each_with_index do |item, index|
#       narr.push(item)
       @farr.push(narr+[item])
     end
   else
     arr.each_with_index do |item, index|
        temp = []
        temp = narr[0 .. narr.length]
#        p 't'
#        p temp
#        p 'p'
        temp.push(item)
        comb(arr.slice(index+1,arr.length),num-1,temp)
     end 
   end 
   @farr
end
end

#p Combn.new.comb(arr,k)
def fcomb(arr)
arr1 = Combn.new.comb(arr,2)

arr1.each do |x|
#  p x 
  tmpar1 = arr-x
#  p tmpar1
  arr2 =  Combn.new.comb(tmpar1,3)
#  p arr2
  arr2.each do |y|
   z = tmpar1 - y
#   p z
    $farr.push([x,y,z])
#    p $farr
#    exit
  end 
end
end

fcomb(arr)
p $farr.length
#puts arr.combination(k).to_a.inspect







