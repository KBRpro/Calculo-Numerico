A=[6,15,55;15,55,225;55,225,979];
g=zeros(columns(A)); 
for k=1:columns(A)  
  soma=0;
  for j=1:(k-1)
    soma=soma+(g(k,j)*g(k,j));  
  endfor
  r=A(k,k)-soma;
  g(k,k)=sqrt(r);
  for i=(k+1):columns(A)
    soma=0;
    for j=1:(k-1)
      soma=soma+(g(i,j).*g(k,j));
    endfor
    g(i,k)=(A(i,k)-soma)/g(k,k);
  endfor
endfor
disp(g);