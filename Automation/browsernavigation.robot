*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Browser Navigation
    Open Browser    https://www.amazon.com      chrome
    Maximize Browser Window
    Sleep   3
    Go to   https://www.facebook.com
    sleep   3
    Go back
    sleep   3
    close browser
