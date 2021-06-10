*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/Karburan/create_IK-res.robot
Test Setup        Open Application To Login Page

*** Variables ***
${LOGIN-GIRON}  leopold.lanne@gadz.org
${PASSWORD-GIRON}  Test123.


*** Test Cases ***
Create Frais
    Login User   ${LOGIN-GIRON}     ${PASSWORD-GIRON}
    Dashboard
    Depenses Tab
    Ajouter Une Depense
    Create IK

