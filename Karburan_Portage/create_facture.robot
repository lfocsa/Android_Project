*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/Karburan/create_facture-res.robot
Test Setup        Open Application To Login Page

*** Variables ***
${LOGIN-GIRON}  giron@giron.fr
${PASSWORD-GIRON}  girongiron

*** Test Cases ***
Create Facture
    Login User  ${LOGIN-GIRON}    ${PASSWORD-GIRON}
    Dashboard
    Prestations Tab
    Facturation Tab
    Add Facture Button
    Create Facture Form
    Add Facture










