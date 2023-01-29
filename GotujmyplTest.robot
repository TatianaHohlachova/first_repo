*** Settings ***
Library  SeleniumLibrary

Test Setup  Open My Browser

*** Variables ***
@{emails}   email1@wp.pl   email2@wp.pl    email3@wp.pl    email4@wp.pl    email5@wp.pl
@{passwords}   pass1    pass2   pass3   pass4   pass5
${message}    Dziękujemy za założenie nowego konta.
*** Keywords ***
Open My Browser
   Open Browser    https://gotujmy.pl/forum/   Chrome
   Maximize Browser Window
   Sleep  3
   Scroll Element Into View    //*[@id="tcf277-permissions-modal"]/div[3]/div/button[2]
   Run Keyword And Ignore Error    click button  //*[@id="tcf277-permissions-modal"]/div[3]/div/button[2]

*** Test Cases ***
Registration In Forum
   [Arguments]   ${name}   ${password}
   Click Element    //*[@id="navTop"]/nav/ul[1]/li[2]/a
   Run Keyword And Ignore Error    click button  //*[@id="tcf277-permissions-modal"]/div[3]/div/button[2]

   Input Text   //*[@id="f_cmu_email"]     tatianah@wp.pl
   Input Text    //*[@id="f_cmu_email2"]     tatianah@wp.pl
   Input Password    //*[@id="f_cmu_password"]      haslo
   Input Password     //*[@id="f_cmu_password2"]      haslo
   Checkbox Should Not Be Selected   //*[@id="newsletter_agree"]
   Select Checkbox    //*[@id="newsletter_agree"]
   Checkbox Should Not Be Selected    //*[@id="user_register_form"]/fieldset/label[2]/input
   Select Checkbox     //*[@id="user_register_form"]/fieldset/label[2]/input
   Checkbox Should Not Be Selected     //*[@id="user_register_form"]/fieldset/label[3]/input
   Select Checkbox    //*[@id="user_register_form"]/fieldset/label[3]/input
   Click Button    //*[@id="user_register_form"]/fieldset/footer/button
   Wait Until Element Is Visible   //*[@id="main_content"]/div/div/h1    timeout=7
   ${my_message}   Get Text    //*[@id="main_content"]/div/div/h1
   Log To Console   ${my_message}
   Should Be Equal As Strings   ${my_message}     ${message}
   Capture Page Screenshot

*** Test Cases ***
Registration Of Multiple User
   FOR    ${i}   IN RANGE   5
      Registration In Forum  ${emails}[${i}]    ${passwords}[${i}]
      Log   User  ${emails}[${i}]
   END

Unsucessful Registration Different Names
   Sleep   1