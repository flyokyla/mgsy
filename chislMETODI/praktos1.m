%1)
x = 0.3; y = 1;
f1 = @(x, y) x^(2*y) - cos(3*x)^3 - 7.9;
disp(['Ответ на 1) ', num2str(f1(x, y))]);

% 2)
x = 3;
f2 = @(x) 2*cos(abs(x))^2 - 3*sin(x^3)^2+4;
disp(['Ответ на 2) ', num2str(f2(x))]);

% 3)
x = 2;
f3 = @(x) (1 - x) / (1 + x) - 1.6 * x^3 * nthroot(x + 7, 3);
disp(['Ответ на 3) ', num2str(f3(x))]);

% 4)
x = 2; y = 3;
f4 = @(x, y) (atan(x / y) - sqrt(sin(x)^2 + x)) / (x^2 + 7 * x * y);
disp(['Ответ на 4) ', num2str(f4(x,y))]);
