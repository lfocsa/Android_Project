*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/Karburan/create_brouillon-res.robot
Test Setup        Open Application To Login Page

*** Variables ***
${LOGIN-GIRON}  giron@giron.fr
${PASSWORD-GIRON}  girongiron


*** Test Cases ***
Create Brouillon
    Login User   ${LOGIN-GIRON}     ${PASSWORD-GIRON}
    Dashboard
    Prestations Tab
    Facturation Tab
    Brouillon Tab
    Add Facture Button
    Create Facture Brouillon Form
    Add Brouillon
