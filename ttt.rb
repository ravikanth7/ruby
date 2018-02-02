# Complete the function below.


def frequency(s)
   a1 = []
   a2 = []
   a1 = s.to_s.split('')
    a1.each do |x|
        if x == ')'
          p a2
            z = ''
            s = ''
            while z != '('
                z = a2.pop
                p z
                if z != '('
                  s = z+s
                end
            end
            zz = a2.pop
            t = s.to_i
            (1..t).each {|x| a2.push(zz)}
        elsif x == '#'
           x1 = a2.pop
           x2 = a2.pop
           a2.push(x2+x1) 
        else
            a2.push(x)
        end
    end
    a3 = (1..26).map {|x| 0}
    p a2
    a2.each do |x|
        a3[x.to_i-1] = a3[x.to_i-1]+1
    end
    a3.each do |y|
     #puts y
    end
end

frequency("1(2)23(3)")
