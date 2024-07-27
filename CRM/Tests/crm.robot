*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary
Library    Screenshot


*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the test
    [Tags]                  1006    Smoke   Contacts
    #Initialize Selenium
    Set selenium speed      .2s
    Set selenium timeout    10s

    #open the browser
    log                     Starting the test case!
    open browser            https://automationplayground.com/crm/       chrome

    # resize browser window for recording
    Set window position     x=341   y=169
    Set window size         width=1935  height=1090
    Page Should Contain    Customers
    Click Link              Sign In
    Sleep    3s
    Capture Page Screenshot
    Page Should Contain    Login
    Input Text    id=email-id    Keith@mad.world
    Input Text    id=password    sdcsdc
    Click Button    Submit
    Capture Page Screenshot
    Wait Until Page Contains    Our Happy Customers
    Click Link    New Customer
    Page Should Contain    Add Customer
    Capture Page Screenshot



    sleep               3s
    close browser

*** Keywords ***
