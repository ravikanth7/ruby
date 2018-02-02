
def isprime(num)
  chk = Math.sqrt(num).ceil
  if num > 2
    (2..chk).each {|x| return false if num%x == 0}
  elsif num == 2
    return true
  else 
    return false
  end
end 

 arr = []
 lwlmt = 1
 uplmt = 100 

 (lwlmt..uplmt).each { |y| arr.push(y) if isprime(y) }

puts arr
