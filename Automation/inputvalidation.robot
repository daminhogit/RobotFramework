*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}        chrome
${URL}      https://flipkart.com
*** Test Cases ***
ValidationTest
    Open Browser    ${URL}     ${browser}
    maximize browser window
    title should be     Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
    ${input_txt}    set variable    xpath:/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
    element should be enabled   ${input_txt}
    element should be visible   ${input_txt}
    Sleep   3
    input text  xpath:/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input     codersarcade@gmail.com
    Sleep   3
    clear element text  xpath:/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
    Sleep   3
    Close browser
*** Keywords ***



