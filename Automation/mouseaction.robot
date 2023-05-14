*** Settings ***

Library  SeleniumLibrary
*** Test Cases ***
mouseaction
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize browser window
    ##open context menu   xpath://button[@onclick='myFunction()']   ##right click on a button
    double click element    xpath://button[normalize-space()='Copy Text']   ##doubleclik on a button
    Sleep   3
    Close browser



