*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${url}   https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}   chrome

*** Keywords ***
Opening my browser
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

closing my browser
    close all browsers

logining into page
    go to ${url}

inputing username
    [arguments]  ${username}
    input text  id:Email    ${username}

inputing password
    [arguments]  ${password}
    input text  id:Password     ${password}

click on login
    click element   xpath://button[@type='submit']

click on logout
    click link  logout


error text should be visible
    page should contain     Login was unsuccessful

Dashboard page should be visible
    page should contain     Dashboard
