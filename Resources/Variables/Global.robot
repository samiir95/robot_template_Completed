*** Keywords ***
Set Common Global Variables
    Set Global Variable    ${URL}    https://www.saucedemo.com/
    Set Global Variable    ${Explicit_Timeout}    60s
    Set Global Variable    ${Signin_Json_FilePath}     Resources${/}DataSources${/}Signin.json
    Set Global Variable    ${UserData_Json_FilePath}     Resources${/}DataSources${/}UserData.json