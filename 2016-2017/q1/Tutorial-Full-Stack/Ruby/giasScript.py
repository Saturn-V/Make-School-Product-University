print("Welcome to the CS110 Supermarket!")
print('~~~~~~~~~~~~~~')

total=0
choice = 0

while choice != 5:
    print("1. Potatoes ($.75 per)")
    print("2. Tomatoes ($1.25 per)")
    print("3. Apples ($.50 per)")
    print("4. Mangoes ($1.75 per)")
    print("5. Checkout")

    choice=int(input("Please choose a numeric option from the list above:"))

    if choice==1:
        potatoes=int(input("How many potatoes would you like?"))
        totalCurrent = potatoes * .75
        print("It will cost you %s for %s potatoes."%(totalCurrent, potatoes))
        total += totalCurrent

    elif choice==2:
        tomatoes=int(input("How many tomatoes would you like?"))
        totalCurrent = tomatoes * 1.25
        print("It will cost you %s for %s tomatoes."%(totalCurrent, tomatoes))
        total += totalCurrent

    elif choice==3:
        apples=int(input("How many apples would you like?"))
        totalCurrent = apples * .50
        print("It will cost you %s for %s apples."%(totalCurrent, apples))
        total += totalCurrent

    elif choice==4:
        mangoes=int(input("How many mangoes would you like?"))
        totalCurrent = mangoes * 1.75
        print("It will cost you %s for %s mangoes."%(totalCurrent, mangoes))
        total += totalCurrent

    else:
        print("Whoops! Incorrect command.")

    print("Your new total is %s."%(total))
print("Your overall total is %s."%(total))

amount2pay = float(input("Please enter the amount2pay: "))

if (amount2pay < total):
    print("Do NOT steal, enter a valid amount please.")
else:
    change = amount2pay - total
    print("Your change is %s."%(change))
    for change != 0:
        if (change % 5 >= 0 or change/5):
            numOfFives = change % 5
            print("You get %s $5 bills"%(numOfFives))
            change -= numOfFives * 5

            if(change < 10):
        if(change <= 10):
