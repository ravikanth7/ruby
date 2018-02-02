 # arr = [[7,8],[52,80],[57,64],[74,78]]
# arr = [[1,80],[1,19]]
arr = [[1,881]]

def countNumbers (arr)
  arr.each do |elm|
    count = 0
    (elm[0]..elm[1]).each do |t| 
      count = count+1 if t.to_s.split('').uniq.length == t.to_s.split('').length
    end
    puts count
  end
end

countNumbers arr