def permutations str
  if str.length == 1
    return [str]
  else
    allperms = []
    perms = permutations str.slice(1,str.length-1)
    letter = str.slice(0,1)
    (0..str.length-1).each do |i|
      perms.each do |word|
        allperms << word.slice(0,i)+letter+word.slice(i,str.length-1)
      end
    end
    return allperms.sort
  end
end

def perms str,s
  if str.length == 1
    return [str]
  else
    allperms = []
    perms = permutations str,s+1
        

    return allperms.sort
  end
end

p (permutations "abcde") == (%w[a b c d e].permutation.map &:join)