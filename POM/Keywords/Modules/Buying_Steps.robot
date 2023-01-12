*** Settings ***
Resource    ../Pages/Landing.robot
Resource    ../Pages/Signin.robot
Resource    ../Pages/Cart.robot
Resource    ../../../POM/Keywords/Modules/Utilitis.robot


*** Keywords ***

Add items to Cart
    Click add item to cart
    Click to view cart

Checkout items
    [Arguments]    ${Firstname}    ${Lastname}    ${Postalcode}
    Click checkout items
    Insert Text in Firstname    ${Firstname}
    Insert Text in Lastname    ${Lastname}
    Insert Text in Postalcode    ${Postalcode}
    Click Continue to proceed
    Click Finish for placing order
    Verify the buying success message
    Take Screenshot