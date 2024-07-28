import random

lista = []

for _ in range(50):

    nums = random.randint(1, 100)

    if (nums not in lista):

        lista.append(nums)
    else:
        pass

print(lista)

