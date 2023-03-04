czlowiek1 = ['Kamil','Musial',34,'M',2, 4000]
czlowiek2 = ['Kasia','Nowak',24,'K',2, 5000]
czlowiek2[4] = 3
print(czlowiek2)

def zwieksz_wyplate(wyplata, zwieksz):
    return wyplata+zwieksz

czlowiek1[5] = zwieksz_wyplate(czlowiek1[5], 500)
print(czlowiek1)