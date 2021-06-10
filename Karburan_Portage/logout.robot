*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/Karburan/logout-res.robot
Test Setup        Open Application To Login Page

*** Variables ***
${LOGIN-GIRON}  giron@giron.fr
${PASSWORD-GIRON}  girongiron

*** Test Cases ***
Logout from app
    Login User   ${LOGIN-GIRON}     ${PASSWORD-GIRON}
    Dashboard
    Logout
