n=8; g= 1; s= 16; a=1.; h=1./n; tau=h^2/(2*a); b=tau*a/h^2;

for i=1:n+1
  x=(i-1)*h;
  u0(i)=-34*x^2+49*x+1;
end

u1(1)=u0(1); u1(n+1)=u0(n+1);
kprn=0;
for k=1:101
  t=(k-1)*tau;
  if (mod(k-1,10)==0 || (k-1)==1)
    kprn = kprn+1;
    Tprn(kprn)=t;
    for i=1:n+1
      Uprn(kprn,i)=u0(i);
    end
  end
  for i=2:n
    %u1(i)=u0(i)+b*(u0(i-1)-2*u0(i)+u0(i+1));
    u1(i) = 0.5*(u0(i-1)+u0(i+1));
  end
  for i=2:n
    u0(i)=u1(i);
  end
end
disp('Массив точек времени');
disp(num2str(Tprn, '%8.5f \n'));
disp('Массив значений температуры в точках табуляции Uprn');
for k=1:kprn
disp(num2str(Uprn(k,:), '%8.4f'));end
