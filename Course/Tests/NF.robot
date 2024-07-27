*** Settings ***
Documentation  This is some basic info about the whole suite
# notice we're no longer referencing the Selenium2Library in our script!
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/NFApp.robot  # necessary for lower level keywords in test cases
Test Setup  Begin Web Test
Test Teardown  End Web Test

# Copy/paste the below line to Terminal window to execute
# robot -d results tests/amazon.robot

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
    NFApp.Search for Products

Logged out user can view a product
    [Tags]  Smoke
    NFApp.Search for Products
    NFApp.Select Product from Search Results

Logged out user cannot add product to cart
    [Tags]  Smoke
    NFApp.Search for Products
    NFApp.Select Product from Search Results
    NFApp.Add Product to Cart

