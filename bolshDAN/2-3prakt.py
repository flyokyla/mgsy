# x1 = input("Задание 1 \nВведите список чисел: ")
# x1 = [int(i) for i in x1.split()]
# if len(x1)==1: y = x1
# else: y = [(x1[i-1] + x1[(i+1)%len(x1)]) for i in range(len(x1))]
# print(f"Итоговая строка: {" ".join(map(str, y))}")

# x5 = [int(i) for i in input("\nЗадание 5 \nВведите список: ").split()]
# if x5==x5[::-1]: print("Список симметричен")
# else: print("Список не симметричен")

n7, k7, l7 = int(input("\nЗадание 7 \nВведите N(- размер списка): ")), int(input("Введите K: ")), int(input("Введите L: "))
while not(1<k7<=l7<=n7): n7,k7,l7 = int(input("Должно выполняться рвенство - 1<K<=L<=N !\nВведите N(- размер списка): ")), int(input("Введите K: ")), int(input("Введите L: "))
x7 = [int(i) for i in input("Введите список: ").split()][0:n7]
while len(x7)<n7: x7 = x7 + [int(i) for i in input().split()][0:(n7-len(x7))]
print(x7[0:k7]+x7[l7+1:len(x7)])
print("Сумма элементов, кроме от K до L: ", sum(x7[0:k7]+x7[l7+1:len(x7)]))

