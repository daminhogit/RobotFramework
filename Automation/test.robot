*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://www.google.com/
${browser}  Chrome


*** Test Cases ***
Google
    Create Webdriver  Chrome  executable_path "C:/Users/eadesany/chromedriver_win32/chromedriver"

    insidegoogle


*** Keywords ***
insidegoogle
        Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep   10
    Close Browser