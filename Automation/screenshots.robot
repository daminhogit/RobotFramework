*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Taking Screenshots
    Open Browser    https://demoqa.com/automation-practice-form     chrome
    maximize browser window
    capture element screenshot  xpath://img[@src='/images/Toolsqa.jpg']     cup.png
    capture page screenshot     website.png
    ##capture page screenshot     \\lipasto\kotidir01$\eadesany\My Documents\DevOPS\website.png   #into a folder

    close browser
