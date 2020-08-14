*** Settings ***
Documentation  Ameicanas landing page
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  ${START_URL}
    Home.Verify page loaded

Verify page loaded
    ${title}  Get Title
    Should Be Equal  ${title}  Americanas - Tudo. A toda hora. Em qualquer lugar.
    Capture Page Screenshot

Verify user not logged in
    Page Should Contain  olá, faça seu login