*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/InputData.robot
#Resource  ../Resources/Common/Common-DB.robot

*** Variables ***

*** Keywords ***
Start Test Web
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window
#    Set Log Level  DEBUG
#    Common.DB  Open database connection

# Uncomment if you want the test to run more slowly
#    Set Selenium Speed  0.3 seconds

Stop Test Web
    Close Browser
#    Common.DB  Close database connection
