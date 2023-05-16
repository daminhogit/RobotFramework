*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/resources.robot
Suite Setup     Opening my browser
Suite Teardown      Closing my browser
Test Template   Invalid login

*** Test Cases ***      username                password
right user wrong pwd    admin@yourstore.com     xyz
wrong user right pwd    adm@yourstore.com       admin
right user empty pwd    admin@yourstore.com     ${EMPTY}
empty user right pwd    ${EMPTY}                admin
wrong user wrong pwd    adm@yourstor.com        xyz


*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    inputing username   ${username}
    inputing password   ${password}

    click on login
    error text should be visible