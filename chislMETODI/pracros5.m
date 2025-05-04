#n=input('Введите число точек разбиения n= ');
n = 7;
dl=1;
s = 16;
g = 1;
h=dl/(n+1);
A=zeros(n,n);
B=zeros(n,n);
Y=zeros(n+2,n);

for i=1:n-1
    A(i,i+1)=-1;
    A(i+1,i)=-1;
end

for i=1:n
    x=i*h;
    A(i,i)=2.;
    B(i,i)=h^2/((s+g)/2.*(dl-x)*x);
end

disp('Матрица А');
disp(num2str(A, ' %8.4f'));

disp('Матрица B');
disp(num2str(B, ' %8.4f'));

[T,J]=eig(inv(B)*A);
P=diag(J);
Y(2:n+1,1:n)=T(1:n,1:n);

disp('Матрица форм потери устойчивости Y');
disp(num2str(Y, ' %8.4f'));

disp('Вектор критических сил P');
disp(num2str(P, '%12.4f'));

x = 0:h:1;
plot(x, Y(:,end-1), "-o");
grid on;
