y=@(x) x^2+x+1;
y2=@(x) 2 ;
somaY=0;
m=10;
x0=0;
xN=1;
h=(xN+x0)/m;
disp(h);
xi=x0;
for i=0:m-1
  somaY=somaY+(((h/2)*(y(xi)+y(xi+h)))-(((h^3)*y2(xN))/12));
  xi=xi+h;
endfor
  disp(somaY);