*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}                 http://127.0.0.1:4723/wd/hub
${PLATFORMNAME}               Android
${DEVICENAME}                 emulator-5554
${APPPACKAGE}                 com.karburan.portage
${APPACTIVITY}                com.karburan.portage.MainActivity
${AUTOMATIONNAME}             UiAutomator2
${ENSUREWEBVIEWSHAVEPAGES}    true
#*** User ***
&{USER1-DETAILS}         email=giron@giron.fr  password=girongiron
#*** Login Page ***
${LOGIN-EMAIL-FIELD}     //android.widget.EditText[@password="false"]
${LOGIN-PASSWORD-FIELD}  //android.widget.EditText[@password="true"]
${LOGIN-SIGNIN-BUTTON}   //android.widget.Button[@text="JE ME CONNECTE"]
#*** Dashboard ***
${BURGER-MENU}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.widget.Button
#*** Prestations ***
${PRESTATIONS-TAB}       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[3]/android.widget.TabWidget/android.view.View[2]/android.view.View
${FACTURES}              //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]
${BROUILLON}             //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.TabWidget/android.view.View[3]/android.view.View
${ADD-FACTURE}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[2]/android.view.View/android.widget.Button
${TITRE}                 //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${CLIENT}                //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${FIRST-CLIENT}          //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.view.View[3]/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
${DELAI-REGLEMENT}       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.Button
${DEBUT-FIN}             //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.view.View[5]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${NOUVELLE-LIGNE}        //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View
${TYPE}                  //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.Button
${TITLE-LIGNE}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${DESCRIPTION}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[5]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${QUANTITE}              //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${UNITE}                 //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.Button
${PRIX-UNITAIRE}         //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${ADD-LIGNE-BUTTON}      //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[8]/android.view.View/android.widget.Button
${ADD-FACTURE-BUTTON}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[6]/android.view.View/android.widget.Button



*** Keywords ***
Open Application To Login Page
    Open Application    ${REMOTE_URL}   platformName=${PLATFORMNAME}  deviceName=${DEVICENAME}  appPackage=${APPPACKAGE}  appActivity=${APPACTIVITY}  automationName=${AUTOMATIONNAME}  ensureWebviewsHavePages=${ENSUREWEBVIEWSHAVEPAGES}

Login User
    [Arguments]     ${login}   ${password}
    Wait Until Page Contains Element  ${LOGIN-EMAIL-FIELD}  timeout= 60
    Input Text  ${LOGIN-EMAIL-FIELD}  ${USER1-DETAILS}[email]
    Input Text  ${LOGIN-PASSWORD-FIELD}  ${USER1-DETAILS}[password]
    Click Element  ${LOGIN-SIGNIN-BUTTON}

Dashboard
    Wait Until Element Is Visible   ${BURGER-MENU}
    Swipe    27    1849    15    73
    Sleep  5s

Prestations Tab
    Wait Until Element Is Visible   ${PRESTATIONS-TAB}
    Sleep  5s
    Click Element   ${PRESTATIONS-TAB}
    Sleep  3s

Facturation Tab
    Wait Until Element Is Visible    ${FACTURES}
    Click Element    ${FACTURES}
    Sleep  2s

Brouillon Tab
    Click Element    ${BROUILLON}

Add Facture Button
    Wait Until Element Is Visible    ${ADD-FACTURE}
    Click Element    ${ADD-FACTURE}
    Sleep  3s

Create Facture Brouillon Form
    Wait Until Element Is Visible    ${TITRE}
    Click Element    ${TITRE}
    Sleep  3s
    Input Text  ${TITRE}  Facture Elena
    Sleep  3s
    Click Element   ${CLIENT}
    Sleep  3s
    Click Element   ${FIRST-CLIENT}
    Sleep  3s
    Click Element   ${DELAI-REGLEMENT}
    Sleep  3s
    Click Element At Coordinates    251    839
    Sleep  2s
    Click Element At Coordinates    827    1452
    Sleep  2s
    Click Element    ${DEBUT-FIN}
    Sleep  2s
    Click Element At Coordinates    533    671
    Sleep  2s
    Click Element At Coordinates    100    1963
    Sleep  2s
    Click Element At Coordinates    1005    139
    Sleep  2s
# Nouvell-ligne
    Swipe    39    1878    27    245
    Sleep   2s
    Click Element    ${NOUVELLE-LIGNE}
    Sleep   3s
    Click Element   ${TYPE}
    Sleep  2s
    Click Element At Coordinates    296    1016
    Sleep  2s
    Click Element At Coordinates    784    1280
    Sleep  3s
    Click Element   ${TITLE-LIGNE}
    Sleep  2s
    Input Text    ${TITLE-LIGNE}   test facture
    Sleep  2s
    Swipe    34    1323    36    762
    Sleep  2s
    Click Element    ${DESCRIPTION}
    Sleep  2s
    Input Text    ${DESCRIPTION}   test elena
    Sleep  2s
    Swipe    32    1296    32    490
    Sleep  2s
# Quantite
    Click Element    ${QUANTITE}
    Sleep  2s
    Click Element At Coordinates    402    1599
    Sleep  2s
    Click Element At Coordinates    936    2004
    Sleep  2s
# Unite
    Click Element At Coordinates    716    1005
    Sleep  3s
    Click Element At Coordinates    296    820
    Sleep  2s
    Click Element At Coordinates    784    1485
    Sleep  5s
# Prix unitaire
    Click Element At Coordinates    301    1235
    Sleep  3s
    Click Element At Coordinates    415    1728
    Sleep  2s
    Click Element At Coordinates    403    2012
    Sleep  2s
    Click Element At Coordinates    942    2002
#   Click Element   ${Add-ligne-button}
    Sleep  3s
    Click Element At Coordinates    524    1466
    Sleep  3s

Add Brouillon
#   Click Element   ${Add-facture-button}
    Click Element At Coordinates    506    1926