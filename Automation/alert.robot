*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
AlertTesting
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    click button    xpath://button[@onclick='myFunction()']
    Sleep   3
    Handle Alert     Dismiss    #accept
    #alert should be present     Press a button!    #Text will be verified "Press a button!"