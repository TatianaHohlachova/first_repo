import time
def welcome_basic():
    time.sleep(0.5)
    print('siema')
    time.sleep(0.5)
    print('przygotowywanie obrazu systemu')
    time.sleep(0.5)
    print('sprawdzanie bledow w systemie')


#def welcome_full(imie, wiek):
#    if wiek == 18:
#        print('Dzien dobry' ,imie)
#    else:
#        print('Czesc',imie)

def stan_zdrowia(waga, wzrost):
    BMI = waga / (wzrost**2)
    if BMI > 35:
        return 1
    elif BMI > 28:
        return 2
    return 3