*** Settings ***
Documentation  Product details page
Library  SeleniumLibrary

*** Variables ***
${CONTINUE_BUTTON} =  id=btn-continue


*** Keywords ***
Verify page loaded
    Page Should Contain  A contratação de seguros é opcional
    Capture Page Screenshot


Proceed to cart
    Click Button  ${CONTINUE_BUTTON}




