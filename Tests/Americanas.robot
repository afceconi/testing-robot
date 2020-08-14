*** Settings ***
Documentation      This test suite validates the actions of search, add and remove product
#Resource  ../Resources/Common/Common-DB.robot
Resource  ../Data/InputData.robot
Resource  ../Resources/Americanas-WEB.robot


*** Keywords ***
Simple Integrated Test
    user is not logged in
    user searches for product  ${SEARCH_TERM}
    search results contains relevant products
    user selects the product
    product page loads
    user adds that product to their cart
    warranty page loads
    continues with no extended warranty
    the product is present in cart
    user removes that product of their cart
    the cart is empty

Search Products
    Given user is not logged in
    When user searches for product  ${SEARCH_TERM}
    Then search results contains relevant products

View Product
    Given user is not logged in
    When user selects a searched product
    Then product page loads

Add Product to Cart
    Given user is not logged in
    And user selects a searched product
    When user adds that product to their cart
    And warranty page loads
    And continues with no extended warranty
    Then the product is present in cart

Remove Product from Cart
    Given user is not logged in
    And user adds searched product to their cart
    When user removes that product of their cart
    Then the cart is empty