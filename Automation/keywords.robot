*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${url}  https://demoqa.com/automation-practice-form
${browser}  chrome

*** Test Cases ***
keywords
    launchingbrowser
    inputingvalues


*** Keywords ***
launchingbrowser
        Open Browser    ${url}  ${browser}
        maximize browser window

inputingvalues
        Input text  xpath://input[@id='firstName']      daminho
        Input text  xpath://input[@id='lastName']       Alapomeji


        Close browser
