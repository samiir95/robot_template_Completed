*** Settings ***
Library     JSONLibrary
Resource        ../../../Resources/Variables/Global.robot
Library         SeleniumLibrary
Variables       ../../Locators/Cart.py
Resource        ../../../Resources/Variables/Global.robot


*** Keywords ***
Get Testdata From JSON
    ${sigin}    Load Json From File    ${Signin_Json_FilePath}
    ${Userdata}    Load Json From File    ${UserData_Json_FilePath}
    
    @{login_username}    Get Value From Json    ${sigin}    $.validusers[0].username
    Set Global Variable  @{login_username}
    @{login_Pass}    Get Value From Json    ${sigin}    $.validusers[0].password
    Set Global Variable    @{login_Pass}
    @{user_firstname}    Get Value From Json    ${Userdata}    $.users[0].firstname
    Set Global Variable    @{user_firstname}
    @{user_lastname}    Get Value From Json    ${Userdata}    $.users[0].lastname
    Set Global Variable    @{user_lastname}
    @{user_postalcode}    Get Value From Json    ${Userdata}    $.users[0].postalcode
    Set Global Variable    @{user_postalcode}
    
Take Screenshot
    Capture Element Screenshot    //div[@id='header_container']   Results/screenshot.png
    Capture Page Screenshot    Results/pagescreenshot.png