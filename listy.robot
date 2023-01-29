*** Settings ***
Library  Collections

*** Variables ***
@{my_list}  1  2  3  4
${zmienna}  4
${slowo}    WSB
*** Test Cases ***
List Basic
   FOR  ${index}  IN  @{my_list}
      Log  ${index}
   END

   Append to list  ${my_list}  ${4}
   Append to list   ${my_list}   wyraz
   Append to list   ${my_list}   wyraz
   Append to list   ${my_list}    ${slowo}
   Log   ${my_list}

   ${my_list}   Remove duplicates    ${my_list}
   Log  ${my_list}

   Remove From List   ${my_list}  2
   Remove Values From List   ${my_list}   1   4
   Log   ${my_list}

   List Should Contain Value  ${my_list}   WSB

