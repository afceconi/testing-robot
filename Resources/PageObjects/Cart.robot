*** Settings ***
Documentation  Ameicanas shopping cart
Library  SeleniumLibrary

*** Variables ***
${REMOVE_PRODUCT} =  xpath=//span[@class='basket-productRemoveAct link-primary --desktop']


*** Keywords ***
Verify page loaded
    Wait Until Page Contains  Minha cesta

Verify product added
    Page Should Contain  Smart TV
    Capture Page Screenshot

Remove product from cart
    Wait Until Element Is Not Visible  ${LOADING}
    Wait Until Element Is Visible  ${REMOVE_PRODUCT}
    Click Element  ${REMOVE_PRODUCT}
    Capture Page Screenshot

Verify empty cart
    Page Should Contain  Sua cesta está vazia
    Capture Page Screenshot
