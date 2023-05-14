*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
TableValidation
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    ${rows}     get element count   xpath://table[@name='BookTable']/tbody/tr
    ${columns}  get element count   xpath://table[@name='BookTable']/tbody/tr/th

    log to console  ${rows}
    log to console  ${columns}

##getting the data "learn selenium"
    ${data}     get text    xpath://table[@name='BookTable']/tbody/tr[2]/td[1]

    log to console  ${data}

##getting the data "javascript"
    ${data2}     get text    xpath://table[@name='BookTable']/tbody/tr[4]/td[3]

    log to console  ${data2}

##getting the number "300"
    ${data3}     get text    xpath://table[@name='BookTable']/tbody/tr[4]/td[4]

    log to console  ${data3}

    table column should contain     xpath://table[@name='BookTable']       1        BookName
    table row should contain     xpath://table[@name='BookTable']      5     Mukesh
    table cell should contain       xpath://table[@name='BookTable']    6   2   Amod
    table header should contain     xpath://table[@name='BookTable']    BookName
