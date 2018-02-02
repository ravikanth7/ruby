def chkArr armx,len

if armx*len >= 50
 return true
else
 return false
end

end


def countArr arr=[],i 
arr = arr.sort
arr_p = arr.select{|x| x >= 50}
arr_m = arr-arr_p


fs = arr_p.length

while arr_m.length > 0
 
arr_m = arr_m.sort
#p arr_m
zz = arr_m.last
ll = arr_m.length

yy = chkArr zz,ll

if yy
fs = fs+1
cc = arr_m.pop
dd = 50/cc
ee = 50%cc

if ee ==0
dd = dd-1
end

arr_m = arr_m.slice(dd,arr_m.length)

else 

arr_m = []

end



end

p "Case ##{i}: #{fs}" 

end


def main asgArr
days = asgArr[0]
asgArr = asgArr.slice(1,asgArr.length)
i = 0
while asgArr.length > 0
i = i+1
ni = asgArr[0]
#p ni
asgArr = asgArr.slice(1,asgArr.length)
minArr = asgArr.slice(0,ni)
#p minArr
countArr minArr,i
asgArr = asgArr.slice(ni,asgArr.length)
#p asgArr

end
 

end


puts "Input :"
zz = gets.chomp.split(',')
zzz = zz.map{|x| x.to_i}
#p zzz
main zzz
#main [5,4,30,30,1,1,3,20,20,20,11,1,2,3,4,5,6,7,8,9,10,11,6,9,19,29,39,49,59,10,32,56,76,8,44,60,47,85,71,91]
