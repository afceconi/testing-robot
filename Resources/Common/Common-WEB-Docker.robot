*** Settings ***
Library  SeleniumLibrary
Library     XvfbRobot

*** Variables ***

*** Keywords ***
Start Test Web
    Start Virtual Display    1366    768
    Open Chrome Browser

Stop Test Web
    Close Browser

Open Chrome Browser
    ${options}  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method  ${options}  add_argument  --no-sandbox
    ${prefs}    Create Dictionary    download.default_directory=/tmp
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    chrome_options=${options}
