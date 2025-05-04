%Задание количеств точек разбиения
%n1=input('Введите n1= ');
%n2=input('Введите n2= ');
n1 = 8;
n2 = 6;
%Задание габаритов области
dl1= 1;
dl2= 1;
g=1;
s=16;
h1=dl1/n1; h2=dl2/n2;
c=-8*(g/dl1+s/dl2);
%Задание граничных условий
for i=1:n2+1
  y=h2*(i-1);
  for j=1:n1+1
    x=h1*(j-1);
    u(i,j)=0.;
    if(j==1 || j==n1+1)
      u(i,j)=4*g/dl2*y*(dl2-y);
    end
    if (i==1 || i==n2+1)
      u(i,j)=4*s/dl1*x*(dl1-x);
    end
  end
end
k=0;
id=0;
while (id==0)
  z=0.;
  for i=2:n2
    for j=2:n1
      r=u(i,j);
      u(i,j)=((u(i-1,j)+u(i+1,j))/h2^2+(u(i,j-1)+u(i,j+1))/h1^2-c)/(2/h1.^2+2/h2.^2);
      z=z+abs(u(i,j)-r);
    end
  end
  k=k+1;
  if (z<0.001 && k<100)
    id=1;
  end
end
disp(num2str(k,'Количество итераций k=%4d \n'));
disp('Решение u');
for i=1:n2+1
  disp(num2str(u(i,:), '%6.2f'));
end
