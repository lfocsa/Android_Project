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
${CLIENT-TAB}            //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
${ADD-CLIENT-BUTTON}     //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View/android.widget.Button
${TYPE-CLIENT}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View
${NOM-ORGANISME}         //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${PAYS}                  //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View[3]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${AFRIQUE}               //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
${SIREN}                 //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${NOM-CONTACT}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[5]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${ADRESSE}               //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[6]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${CODE-POSTAL}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${VILLE}                 //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View[5]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${EMAIL}                 //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View[6]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${SUBMIT-CLIENT}         //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.widget.Button



*** Keywords ***
Open Application To Login Page
    Open Application    ${REMOTE_URL}   platformName=${PLATFORMNAME}  deviceName=${DEVICENAME}  appPackage=${APPPACKAGE}  appActivity=${APPACTIVITY}   automationName=${AUTOMATIONNAME}  ensureWebviewsHavePages=${ENSUREWEBVIEWSHAVEPAGES}

Login User
    [Arguments]     ${login}   ${password}
    Wait Until Page Contains Element  ${LOGIN-EMAIL-FIELD}  timeout= 60
    Input Text  ${LOGIN-EMAIL-FIELD}    ${login}
    Input Text  ${LOGIN-PASSWORD-FIELD}     ${password}
    Click Element  ${LOGIN-SIGNIN-BUTTON}

Dashboard
    Wait Until Element Is Visible   ${BURGER-MENU}
    Swipe    27    1849    15    73
    Sleep  3s

Prestations Tab
    Wait Until Element Is Visible   ${PRESTATIONS-TAB}
    Sleep  3s
    Click Element   ${PRESTATIONS-TAB}
    Sleep  3s
Client Tab
    Wait Until Element Is Visible    ${CLIENT-TAB}
    Sleep  2s
    Click Element    ${CLIENT-TAB}
    Sleep  2s
Ajouter Un Client Form
    Wait Until Element Is Visible    ${ADD-CLIENT-BUTTON}
    Sleep  2s
    Click Element    ${ADD-CLIENT-BUTTON}
    Sleep  3s
    # type de client
    Wait Until Element Is Visible    ${TYPE-CLIENT}
    Sleep  2s
    Click Element    ${TYPE-CLIENT}
    Sleep  2s
    Click Element At Coordinates    294    891
    Sleep  2s
    Click Element At Coordinates    781    1398
    Sleep  2s
    # infos principales
    Wait Until Element Is Visible    ${NOM-ORGANISME}
    Sleep  2s
    Click Element    ${NOM-ORGANISME}
    Sleep  2s
    Input Text    ${NOM-ORGANISME}  Elena test
    Sleep  2s
    Swipe    46    1233    24    573
    Sleep  5s
    Wait Until Element Is Visible    ${PAYS}
    Sleep  5s
    Click Element    ${PAYS}
    Sleep  7s
    Click Element    ${AFRIQUE}
    Sleep  5s
    Swipe    39    956    32    590
    Sleep  5s
    Wait Until Element Is Visible    ${SIREN}
    Sleep  5s
    Click Element    ${SIREN}
    Sleep  5s
    Input Text    ${SIREN}  123456789
    Sleep  5s
    Swipe    56    1044    44    439
    Sleep  5s
    Wait Until Element Is Visible    ${NOM-CONTACT}
    Sleep  5s
    Click Element    ${NOM-CONTACT}
    Sleep  5s
    Input Text    ${NOM-CONTACT}    Elena
    Sleep  5s
    Wait Until Element Is Visible    ${ADRESSE}
    Sleep  5s
    Click Element    ${ADRESSE}
    Sleep  5s
    Input Text    ${ADRESSE}    V.Alecsandri
    Sleep  5s
    Swipe    29    1155    17    578
    Sleep  5s
    Wait Until Element Is Visible    ${CODE-POSTAL}
    Sleep  5s
    Click Element    ${CODE-POSTAL}
    Sleep  5s
    Input Text    ${CODE-POSTAL}    12345
    Sleep  5s
    Wait Until Element Is Visible    ${VILLE}
    Sleep  5s
    Click Element    ${VILLE}
    Sleep  5s
    Input Text    ${VILLE}  Chisinau
    Sleep  5s
    Wait Until Element Is Visible    ${EMAIL}
    Sleep  5s
    Click Element    ${EMAIL}
    Sleep  5s
    Input Text    ${EMAIL}  elena@tekoway.com
    Sleep  5s
    Swipe    29    1078    27    476
    Sleep  5s
    Click Element    ${SUBMIT-CLIENT}
    Sleep  5s


