from funkcja2 import *

while True:
    wyplata = input('Ile zarabiasz? ')
    try:
        wyplata = float(wyplata)
        break
    except ValueError:
        print('zle dane,jeszcze raz')

while True:
    liczba_dzieci = input('Ile masz dzieci? ')
    try:
        liczba_dzieci = int(liczba_dzieci)
        break
    except ValueError:
        print('zle dane, jeszcze raz')

while True:
    liczba_dzieci = input('Ile masz dzieci? ')
    try:
        liczba_dzieci = int(liczba_dzieci)
        break
    except ValueError:
        print('zle dane, jeszcze raz')
try:
    print('kasa na dziecko =',wyplata/liczba_dzieci)
except ZeroDivisionError:
    print('cala kasa dla siebie')





