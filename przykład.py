napis = 'Kamil ma psa'
lista_zwierzat = ['pies', 'drugi pies', 'tu tez pies']

print(napis[2:6])
print(lista_zwierzat[2])
print(lista_zwierzat[2][3:7])
print(lista_zwierzat[2][-3])
for i in range(20, 4, -3):    #od,do,krok
    print(i)

for i in range(4):    #i jest iteratorem, mozna go uzyc tak jak chcemy
    print('okrazenie ',i+1,'litera ',i+4, 'to',napis[i+3],'\n')

for i in napis:    #petla po stringu(napis)
    print(i)
for zwierze in lista_zwierzat:   #petla po liscie
    print(zwierze)