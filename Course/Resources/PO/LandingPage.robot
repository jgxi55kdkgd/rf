*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Load    Go To  https://redmart.lazada.sg/

Verify Page Loaded
    Wait Until Page Contains  Lazada