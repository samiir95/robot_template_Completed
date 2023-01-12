*** Settings ***
Resource    ../Pages/Signin.robot


*** Keywords ***
SignIn to Portal 
    [Arguments]    ${Username}    ${Password}
    Insert Text in Username    ${Username}
    Insert Text in Password    ${Password}
    Click Login Button
