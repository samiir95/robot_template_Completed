*** Settings ***
Documentation       Test Suite for Sign-in and Buying Products on sauaselab portal Case

Resource            ../../POM/Keywords/Modules/Utilitis.robot
Resource            ../../Resources/Setup/Enviorenment.robot
Resource            ../../POM/Keywords/Modules/Signin_Steps.robot
Resource            ../../POM/Keywords/Modules/Buying_Steps.robot

Test Setup          Enviorenment Setup    #This will be executed before each testcase
Test Teardown       Enviorenment Teardown    #This will be executed after each testcase


*** Test Cases ***
Login to SwagLabs and place an order
    [Tags]    positive, login-functionality, smoke-test
    
    Get Testdata From JSON
    SignIn to Portal    ${login_username[0]}    ${login_Pass[0]}
    Add items to Cart
    Checkout items    ${user_firstname[0]}    ${user_lastname[0]}    ${user_postalcode[0]}
