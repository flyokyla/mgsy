dl=1;
N=10;
x0=0;
y0=0;
z0=0;
h=dl/N;
s = 16; g = 1;
c=0.02*(g+s);
disp(' x y z');
d=zeros(N+1,3); d1=zeros(N+1,1);
d2=zeros(N+1,1); d3=zeros(N+1,1);
M = @(x,c) 1/sqrt((1+(c*x)^2)^3);
f = @(x,z,c) c*M(x,c)*sqrt((1+z^2)^3);
for i=1:N+1
  d1(i)=x0;
  d2(i)=y0;
  d3(i)=z0;
  z=z0+h*f(x0,z0,c);
  y=y0+h*(z0+z)/2;
  x0=x0+h;
  z0=z;
  y0=y;
end
d=[d1 d2 d3];
disp(d);
plot(d1, (-1)*d2, '-o');
grid on;

