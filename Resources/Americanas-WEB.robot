*** Settings ***
Resource  ../Resources/PageObjects/Home.robot
Resource  ../Resources/PageObjects/TopNav.robot
Resource  ../Resources/PageObjects/SearchResults.robot
Resource  ../Resources/PageObjects/Product.robot
Resource  ../Resources/PageObjects/Cart.robot
Resource  ../Resources/PageObjects/Warranty.robot


*** Keywords ***
user is not logged in
    Home.Load
    Home.Verify user not logged in

user searches for product
    [Arguments]  ${PRODUCT_TERM}
    TopNav.Search for product  ${PRODUCT_TERM}

search results contains relevant products
    SearchResults.Select right category

user selects the product
    SearchResults.Click product link

user selects a searched product
    user searches for product  ${SEARCH_TERM}
    search results contains relevant products
    user selects the product

product page loads
    Product.Verify page loaded

user adds that product to their cart
    Product.Add to cart

warranty page loads
    Warranty.Verify page loaded

continues with no extended warranty
    Warranty.Proceed to cart

user adds searched product to their cart
    user selects a searched product
    Product.Add to cart
    Warranty.Verify page loaded
    Warranty.Proceed to cart

the product is present in cart
    Cart.Verify page loaded
    Cart.Verify product added

user removes that product of their cart
    Cart.Remove product from cart

the cart is empty
    Cart.Verify empty cart
