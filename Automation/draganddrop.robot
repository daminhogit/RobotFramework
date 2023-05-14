*** Settings ***

Library  SeleniumLibrary
*** Test Cases ***
draganddrop
    Open Browser     https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    drag and drop   xpath://p[normalize-space()='Drag me to my target']     xpath://div[@id='droppable']


    Close browser
