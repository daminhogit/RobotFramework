*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}        chrome
${URL}      https://fs2.formsite.com/meherpavan/form2/index.html?1537702596407


*** Test Cases ***
checking radio buttons and check boxes
    Open Browser    ${URL}     ${browser}
    Maximize Browser Window
    Set Selenium Speed  1

##Filling the forms
Filling the form boxes
    Input Text  xpath://*[@id="RESULT_TextField-1"]     Bezalel
    Input Text  xpath://*[@id="RESULT_TextField-2"]     Adesanya
    Input Text  xpath://*[@id="RESULT_TextField-3"]     +358504649053
    Input Text  xpath://*[@id="RESULT_TextField-4"]     Finland
    Input Text  xpath://*[@id="RESULT_TextField-5"]     Oulu
    Input Text  xpath://*[@id="RESULT_TextField-6"]     example@gmail.com



    Close Browser







*** Keywords ***
