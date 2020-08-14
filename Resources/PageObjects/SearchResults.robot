*** Settings ***
Documentation  Ameicanas search results page
Library  SeleniumLibrary

*** Variables ***
${CATEGORY} =  xpath=//a/span[contains(text(), 'Smart Tv')]
${SECOND_PRODUCT} =  xpath=(//div[starts-with(@class, 'product-grid-item')][2])//a


*** Keywords ***
Select right category
    Wait Until Element Is Visible  ${CATEGORY}
    Page Should Contain Element  ${CATEGORY}
    Click Element  ${CATEGORY}

Click product link
    Execute JavaScript    window.scrollTo(0,200)
    Wait Until Element Is Not Visible  ${LOADING}
    Wait Until Element Is Visible  ${SECOND_PRODUCT}
    Click Link  ${SECOND_PRODUCT}
    Capture Page Screenshot