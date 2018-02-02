# Complete the function below.


def frequency(s) 
  arr1 = s.to_s.split('')
  arr2 = Array.new

    arr1.each do |elm|
        if elm == ')'
            xx1 = ''
            xx2 = ''
            while xx1 != '('
                xx1 = arr2.pop
                if xx1 != '('
                  xx2 = xx1+xx2
                end
            end
            xx3 = arr2.pop
            xx4 = xx2.to_i
            (1..xx4).each {|t| arr2.push(xx3)}
        elsif elm == '#'
           xy1 = arr2.pop
           xy2 = arr2.pop
           arr2.push(xy2+xy1) 
        else
            arr2.push(elm)
        end
    end
    arr3 = (1..26).map {|t| 0}
    arr2.each do |t|
        arr3[t.to_i-1] = arr3[t.to_i-1]+1
    end
    arr3.each do |y|
     puts y
    end

end

frequency("23#(2)24#25#26#23#(3)")