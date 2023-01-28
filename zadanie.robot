#https://gotujmy.pl/forum/

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{emails}   email1   email2    email3    email4    email5
@{passwords}   pass1    pass2   pass3   pass4   pass5

*** Test Cases ***
Registration In Forum
   Open Browser    https://gotujmy.pl/forum/   Chrome
   Run Keyword And Ignore Error    click button  //*[@id="tcf277-permissions-modal"]/div[3]/div/button[2]
   Click Element    //*[@id="navTop"]/nav/ul[1]/li[2]/a
   Run Keyword And Ignore Error    click button  //*[@id="tcf277-permissions-modal"]/div[3]/div/button[2]
   Input Text   //*[@id="f_cmu_email"]
   Input Text    //*[@id="f_cmu_email2"]
   Input Password    //*[@id="f_cmu_password"]
   Input Password     //*[@id="f_cmu_password2"]


   Capture Page Screenshot

