*** Settings ***
Library         SeleniumLibrary
Variables       ../../Locators/Signin.py
Resource        ../../../Resources/Variables/Global.robot


*** Keywords ***
Insert Text in Username
    [Arguments]    ${UserName_Value}
    Input Text    ${txt_username}    ${UserName_Value}

Insert Text in Password
    [Arguments]    ${Password_Value}
    Input Text    ${txt_password}    ${Password_Value}

Click Login Button
    Click Element    ${btn_login}
