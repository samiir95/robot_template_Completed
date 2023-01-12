*** Settings ***
Library         SeleniumLibrary
Variables       ../../Locators/Cart.py
Resource        ../../../Resources/Variables/Global.robot


*** Keywords ***

Click checkout items
    Wait Until Element Is Visible    ${btn_checkout}    ${Explicit_Timeout}
    Click Element    ${btn_checkout}


Insert Text in Firstname
    [Arguments]    ${FirstName_Value}
    Wait Until Element Is Visible    ${txt_firstname}    ${Explicit_TimeOut}
    Input Text    ${txt_firstname}    ${FirstName_Value}

Insert Text in Lastname
    [Arguments]    ${Last_Value}
    Wait Until Element Is Visible    ${txt_lastname}    ${Explicit_TimeOut}
    Input Text    ${txt_lastname}    ${Last_Value}

Insert Text in Postalcode
    [Arguments]    ${Postalcode_Value}
    Wait Until Element Is Visible    ${txt_postalcode}    ${Explicit_TimeOut}
    Input Text    ${txt_postalcode}    ${Postalcode_Value}

Click Continue to proceed
    Wait Until Element Is Visible    ${btn_continue}    ${Explicit_Timeout}
    Click Element    ${btn_continue}

Click Finish for placing order
    Wait Until Element Is Visible    ${btn_finish}    ${Explicit_Timeout}
    Click Element    ${btn_finish}

Verify the buying success message
    Wait Until Element Is Visible    ${lbl_buysuccess}    ${Explicit_Timeout}
    ${success_text}=    Get Text     ${lbl_buysuccess}  
    Should Be Equal    ${success_text}    THANK YOU FOR YOUR ORDER