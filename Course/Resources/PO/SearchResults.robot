*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  found for "football drinking straw"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Link  css=a[href^="//www.lazada.sg/products/lava-eco-football-soccer-drinking-paper-straws-biodegradable-eco-friendly-compostable-100pcs-i2971028372-s20416786546.html"]