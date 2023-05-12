*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}        chrome
${URL}      https://demoqa.com/automation-practice-form


*** Test Cases ***
Checking radio buttons and check boxes
    Open Browser    ${URL}     ${browser}
    Maximize Browser Window
    Set Selenium Speed  1

#Filling the Registration Form
    Input Text      xpath://*[@id="firstName"]      Obaloluwa
    Input Text      xpath://*[@id="lastName"]       Adesanya
    Input Text      xpath://*[@id="userEmail"]      example@gmail.com

#Filling the Registration Forms
    Input Text      xpath://*[@id="userNumber"]     +358504649053








