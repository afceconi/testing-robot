*** Settings ***
Documentation      This test suite validates the actions of search, add and remove product. Configured to run on Windows.
Resource  ../Resources/Common/Common-WEB-Win.robot
Resource  Americanas.robot
Test Setup  Start Test Web
Test Teardown  Stop Test Web


*** Test Case ***
T0: Logged out user can search product, add product to cart and remove product from cart
    [TAGS]  E2ETest
    Americanas.Simple Integrated Test

T01: Logged out user can search for products
    Americanas.Search Products

T02: Logged out user can view a product
    Americanas.View Product

T03: Logged out user can add product to cart
    Americanas.Add Product to Cart

T04: Logged out user can remove product from cart
    Americanas.Remove Product from Cart