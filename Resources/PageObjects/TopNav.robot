*** Settings ***
Documentation  Ameicanas top navigation
Library  SeleniumLibrary

*** Variables ***
${SEARCH_INPUT} =  id=h_search-input
${SEARCH_BUTTON} =  id=h_search-btn

*** Keywords ***
Search for product
    [Arguments]  ${product_term}
    Enter Search term  ${product_term}
    Submit Search

Enter search term
    [Arguments]  ${product_term}
    Input Text  ${SEARCH_INPUT}  ${product_term}
    Capture Page Screenshot

Submit search
    Click Button  ${SEARCH_BUTTON}