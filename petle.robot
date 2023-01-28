*** Variables ***
${string}    piesek
@{list}   pierwszy   drugi   trzeci    czwarty    piaty
@{list_of_numbers}   1   2    3   4   5
&{dictionary}   slowo=${string}    numer=30    lista=@{list}
@{imiona}   Kamil   Marta   Agnieszka    Marek
@{nazwiska}   Kowalski   Malinowski     Nowak   Nijaki
*** Test Cases ***
Nest Loops
   @{letters}   Create List    a   b   c    d
   Log    ${letters}
   @{numbers}   Create List    ${1}    ${2}    ${3}
   Log   ${numbers}
   FOR    ${letter}   IN   @{letters}
      FOR   ${number}   IN   @{numbers}
         Log    ${letter} ${number}
      END
   END


For Loop in Dictionary
   Log   ${dictionary}
   FOR   ${keys_and_values}   IN    &{dictionary}
      Log  ${keys_and_values}
   END

For Loop in Range With Index
   FOR   ${i}  IN RANGE   4
      Log   ${imiona} [${i}] ${nazwiska} [${i}]
   END


For Loop in List
   FOR   ${item}   IN  @{list_of_numbers}
      IF    ${items} == 3  Log   ${items}
   END


For Loop In Range 10
   FOR   ${i}   IN RANGE    10
      Log   ${i}
   END


For Loop in Range2
   FOR    ${i}     IN RANGE    4    10
       Log   ${i}
   END

For Loop in Range3
   FOR    ${i}    IN RANGE    4    10
      Log   ${i}
   END
