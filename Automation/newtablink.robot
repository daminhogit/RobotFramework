*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
windowsclose
    Open browser    https://robotframework.org      chrome
    maximize browser window
    BuiltIn.Sleep   3
    click link  xpath://a[normalize-space()='AppiumLibrary']
    BuiltIn.Sleep   3
    switch window   Robot Framework
    BuiltIn.Sleep   3
    close window
    BuiltIn.Sleep   3
    close browser
