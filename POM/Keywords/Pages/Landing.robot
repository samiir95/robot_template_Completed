*** Settings ***
Library         SeleniumLibrary
Variables       ../../Locators/Landing.py
Resource        ../../../Resources/Variables/Global.robot


*** Keywords ***
Click add item to cart
    Wait Until Element Is Visible    ${btn_additem}    ${Explicit_Timeout}
    Click Element    ${btn_additem}

Click to view cart
    Wait Until Element Is Visible    ${btn_cart}    ${Explicit_Timeout}
    Click Element    ${btn_cart}