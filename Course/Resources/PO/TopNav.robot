*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  id=q  football drinking straw


Submit Search
    Click Element    css=button.search-box__button--1oH7