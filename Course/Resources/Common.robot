*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome    options=add_argument('--disable-dev-shm-usage')
    Maximize Browser Window

End Web Test
    Close Browser