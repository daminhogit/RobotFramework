*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}        chrome
${url}            https://www.amazon.com/
${search_term}   mother's day gifts
${search_item2}     football jerseys

*** Test Cases ***
InputBox
    Create Webdriver  Chrome  executable_path "C:/Users/eadesany/chromedriver_win32/chromedriver"

    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed  1

    input text  xpath://*[@id="twotabsearchtextbox"]        ${search_term}
    click button    xpath://*[@id="nav-search-submit-button"]
    clear element text  xpath:/html[1]/body[1]/div[1]/header[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/div[1]/input[1]
    input text  xpath:/html[1]/body[1]/div[1]/header[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/div[1]/input[1]    ${search_item2}
    click button    xpath://*[@id="nav-search-submit-button"]
    Close Browser






*** Keywords ***
