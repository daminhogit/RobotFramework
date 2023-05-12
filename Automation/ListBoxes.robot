*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}        chrome
${url}            https://itera-qa.azurewebsites.net/home/automation

*** Test Cases ***
ListBoxes test
    Open Browser    ${url}      ${browser}
    Maximize browser window
    Set Selenium Speed  1

    Input text  xpath://*[@id="name"]  Coders Arcade
    Input text  xpath://*[@id="phone"]  0504649053
    Input Text  xpath://*[@id="email"]  example@gmail.com
    Input Text  xpath://*[@id="password"]   1234567?!
    Input Text  xpath://*[@id="address"]  Pelumi 123 Finland

    Click Element   id=female
    Click Element   id=monday
    Click Element   id=sunday


    Select from list by value   xpath:/html/body/div[1]/div[4]/div[2]/div/select   1

    Click Element   xpath:/html/body/div[1]/div[5]/div[2]/div[1]/div[1]/label
    Click Element   xpath:/html/body/div[1]/div[5]/div[2]/div[2]/div[1]/label
    Click Element   xpath:/html/body/div[1]/div[5]/div[2]/div[2]/div[2]/label
    Click Element   xpath:/html/body/div[1]/div[5]/div[2]/div[2]/div[3]/label

    Close browser


