def fibbonacci(order):
    if(order == 0):
        return 0
    elif(order == 1 or order == 2):
        return 1
    return fibbonacci(order-1) + fibbonacci(order - 2)



for i in range(6):
    print(fibbonacci(i),end = " ")




