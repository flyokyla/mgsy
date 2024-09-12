# def f(x):
#     e = 2.718281828459045
#     return x**17*e**(-x)

# s = 0
# for i in range(1,10001):
#     x = 0.0001*i
#     s += 0.0001*(f(x)+f(x-0.0001))/2
# print(s)

e = 2.718281828459045
for i in range(1,10001):
    x = 0.0001*i