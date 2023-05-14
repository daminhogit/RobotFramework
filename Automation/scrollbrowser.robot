*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Scroll through browser page
    open browser    https://amazon.com      chrome
    maximize browser window
    sleep   3

    execute javascript  window.scrollTo(0,4500)     ##scroll to the dimension pixel of the webpage
    ## scroll element into view xpath:              ##scroll the page to an image line or text/link line using xpath
    ## execute javascript  window.scrollTo(0,document.body.scrollHeight)     ##scroll to the bottom of the webpage
    sleep   3
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)     ##scroll to the top of the webpage /-document
    close browser

