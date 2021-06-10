*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/Karburan/create_frais-res.robot
Test Setup        Open Application To Login Page

*** Variables ***
${LOGIN-GIRON}  giron@giron.fr
${PASSWORD-GIRON}  girongiron


*** Test Cases ***
Create Frais
    Login User   ${LOGIN-GIRON}     ${PASSWORD-GIRON}
    Dashboard
    Depenses Tab
    Ajouter Une Depense
