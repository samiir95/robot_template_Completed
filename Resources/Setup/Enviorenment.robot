*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/Global.robot


*** Keywords ***
Enviorenment Setup
    Set Common Global Variables
    Open Browser    url=${URL}    browser=Chrome
    Maximize Browser Window

Enviorenment Teardown
    Close Browser
