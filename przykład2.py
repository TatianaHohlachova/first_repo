nazwa = 'kamil Adam Musial'
nazwa_ze_zmiana = nazwa.replace('i', 'DUZE_I', 1)   #co, na co, ile razy
#nazwa_bez_spacji = nazwa.replace()
print(nazwa_ze_zmiana)

print(nazwa.replace(' ', ''))  #zamien spacje na nic
print(nazwa.replace(' ', '\n'))  #zamien spacje na Enter

#nazwa_podzielona = nazwa.split()  #zamiana na listę po spacji
#   print(nazwa_podzielona)
#   for slowo in nazwa_podzielona:
#       print(slowo)

for slowo in nazwa.split():
    print(slowo)