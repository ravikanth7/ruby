w = [10,20,30]
v = [60,100,120]
W = 45

def knapsack v,w,m
  ca = (0..w.length-1).map { |x| x }
  max = 0
  mca = []
  (1..w.length).each do |x|
    ca.combination(x).to_a.each do |y|
     temp = y.inject(0) { |s,v| s = s+w[v] }
      if temp < W && temp > max
       max = temp
       mca = y
      end
    end
  end
  p max
  p mca.map  { |z| v[z] }
end

knapsack v,w,W
