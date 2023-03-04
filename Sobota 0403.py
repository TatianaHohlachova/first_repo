#program, ktory sprawdzi, czy dane słowo to palindrom
slowo = input('Wpisz slowo ')
#Liczba_iteracji = len(slowo)//2
#for i in range(liczba_iteracji):
#    if slowo[i]  |= slowo[-1 -i]:   #https://www.w3schools.com/python/python_howto_reverse_string.asp
if slowo == slowo[::-1]:
    print('Tak, palindrom')
else:
    print('Nie, nie palindrom')