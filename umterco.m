y=@(x) 1/(1+x);
n=6;
x0=0;
xN=3;
if(n>0)
  if(rem(n,2)!=0)
    n=n+1;
  endif
  h=(xN-x0)/n;
  x=x0+h;
  somaPar=0;
  somaImpar=0;
  for i=1:n-1
    if(rem(i,2)==0)
      somaPar=somaPar+y(x);
    else
      somaImpar=somaImpar+y(x);
    endif
    x=x+h;
  endfor
  R=(h/3)*(y(x0)+y(xN)+(4*somaImpar)+(2*somaPar));
  disp(R);  
endif