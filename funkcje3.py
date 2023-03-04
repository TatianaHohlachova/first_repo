from funkcje33 import *

pensja = input('Ile zarabiasz? ')

if isinstance(pensja, str):
    pensja = input_to_number(pensja)

print(type(pensja))