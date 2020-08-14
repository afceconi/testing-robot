*** Settings ***
Documentation  Product details page
Library  SeleniumLibrary

*** Variables ***
${BUY_BUTTON} =  xpath=//*[@id='btn-buy']

*** Keywords ***
Verify page loaded
    Page Should Contain  Informações do produto
    Capture Page Screenshot

Add to cart
    Execute JavaScript    window.scrollTo(0,550)
    Click Element  ${BUY_BUTTON}