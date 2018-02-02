A1 = [A,B,C,D,E]
A2= [F,G,H,I,J]
n = 2

O = [A,B, I,J, C,D, G,H, E, F]


a1 = A1.length
a2 = A2.length
l1 = a1/n
l2 = a2/n

if (l1 == 0 && l2 == 0) {
  i = 0
  j = 0
  out = []
  while (i < a1) {
    out.push(A1[i])
  }
  while (j < a2) {
    out.push(A2[j])
  }
  return out  
} else {
  if(a1%n > 0) {
    l1 = l1+1
  }
  if(a2%n > 0) {
    l2 = l2+1
  }
  out = []
  x1 = 0
  x2 = 0
  while(x1 < l1 && x2 < l2) {

    if(x1 < l1) {
      for(i=0;i<n;i++) {
        if(A1[x1*n+i]) {
          out.push(A1[x1*n+i])  
        }        
      }
      x1--
    }

    if(x2 < l2) {
      for(i=n-1;i<0;i++) {
        if(A2[a2-(x2*n+i)-1]) {
          out.push(A2[a2-(x2*n+i)-1])  
        }
      }
      x2--
    }
  } 
  return out 
}