require 'prime'

def isprime(num)
  chk = Math.sqrt(num).ceil
  if num > 1
    (2..chk).each {|x| return false if num%x == 0}
  else 
    return false
  end
end 

 number = 79

 if isprime(number)
  puts 'prime'
 else 
  puts 'not prime'
 end

if Prime.prime?(number) 
 puts 'prime'
end
