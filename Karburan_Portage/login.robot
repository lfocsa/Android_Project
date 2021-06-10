*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/Karburan/login-res.robot
Test Setup        Open Application To Login Page

*** Variables ***
${LOGIN-GIRON}  giron@giron.fr
${PASSWORD-GIRON}  girongiron

*** Test Cases ***
Log in the app
    Login User   ${LOGIN-GIRON}     ${PASSWORD-GIRON}
    Dashboard