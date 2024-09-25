import math

def simpsons_rule(f, a, b, n=1000):
    if n % 2 == 1:
        n += 1 
    
    h = (b - a) / n
    integral = f(a) + f(b)
    
    for i in range(1, n, 2):
        integral += 4 * f(a + i * h)
    
    for i in range(2, n-1, 2):
        integral += 2 * f(a + i * h)
    
    return integral * h / 3

def J_n(n):
    integrand = lambda x: (x**n) * math.exp(x)
    integral_value = simpsons_rule(integrand, 0, 1)
    return integral_value / math.exp(1)

def main():
    n = int(input("Введите значение S: "))
    
    result = round(J_n(0), 8)
    print(f"{result}")

    for i in range(n-1, n+102):
        result = round(J_n(i), 8)
        print(f"{result}")
    
    print("Нажми любую клавишу для завершения...")
    input()

if __name__ == "__main__":
    main()
