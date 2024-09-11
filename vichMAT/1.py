import pandas

x = pandas.read_csv("/home/okyla/main/mgsy/vichMAT/data.csv")
k1 = 0
s2 = []
k3 =0
s3 = 0 

for i in range(0,1000):
    if(x['parental level of education'][i]=="master's degree"): k1+=1
    if (x['math score'][i]==max(x['math score'])):s2.append(x['reading score'][i])
    if (x['writing score'][i]>90): 
        s3+=1 
        if (x['lunch'][i]=="standard"): k3+=1
print(f"Задание 1: У {k1} девочек родители имеют степень магистра")
print(f"Задание 2: Cредний балл на экзамене по чтению ученикиов, набравших максимальный балл на экзамене по математике, равен: {sum(s2)/len(s2):.3f}")
print(f"Задание 3: Процентов абитуриентов, получивших на экзамене по письму оценку более 90, которые хорошо пообедали перед экзаменом равен: {k3/s3:.1f}")
