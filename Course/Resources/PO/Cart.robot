*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Email Required
    Wait Until Element Is Visible    css=input[placeholder="Please enter your Phone Number or Email"]
