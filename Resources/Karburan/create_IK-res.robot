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
&{USER1-DETAILS}         email=leopold.lanne@gadz.org  password=Test123.
#*** Login Page ***
${LOGIN-EMAIL-FIELD}     //android.widget.EditText[@password="false"]
${LOGIN-PASSWORD-FIELD}  //android.widget.EditText[@password="true"]
${LOGIN-SIGNIN-BUTTON}   //android.widget.Button[@text="JE ME CONNECTE"]
#*** Dashboard ***
${BURGER-MENU}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.widget.Button
#*** Depenses ***
${DEPENSES-TAB}          //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[3]/android.widget.TabWidget/android.view.View[3]/android.view.View
${ADD-DEPENSE}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[2]/android.view.View/android.widget.Button
#*** IK ***
${IK}                    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View[1]
${TITRE-TRAJET}          //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${ADD-STEP}              //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[5]/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Image
${DEPART}                //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${MARSEILLE}             //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.view.View[3]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${DESTINATION}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${BORDEAUX}              //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.view.View[3]/android.view.View[1]/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View/android.view.View/android.view.View
${DATE}                  //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[4]/android.view.View[1]/android.view.View
${MOTIF}                 //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[4]/android.view.View[2]/android.view.View
${PERSONNE-RENCONTREE}   //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[3]/android.view.View[3]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${SUBMIT-STEP}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.widget.Button
${SUBMIT-IK}             //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.widget.Button


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

Depenses Tab
    Click Element   ${DEPENSES-TAB}
    Sleep   5s

Ajouter Une Depense
    Click Element   ${ADD-DEPENSE}
    Sleep   5s
Create IK
    Wait Until Element Is Visible    ${IK}
    Sleep  3s
    Click Element    ${IK}
    Sleep  3s
    Wait Until Element Is Visible    ${TITRE-TRAJET}
    Sleep  3s
    Click Element    ${TITRE-TRAJET}
    Sleep  3s
    Input Text    ${TITRE-TRAJET}   Elena Test IK
    Sleep  3s
    Wait Until Element Is Visible    ${ADD-STEP}
    Sleep  3s
    Click Element    ${ADD-STEP}
    Sleep  3s
    Wait Until Element Is Visible    ${DEPART}
    Sleep  3s
    Click Element    ${DEPART}
    Sleep  7s
    Input Text    ${DEPART}  Marseille
    Sleep  7s
    Wait Until Element Is Visible    ${MARSEILLE}
    Sleep  5s
    Click Element    ${MARSEILLE}
    Sleep  5s
    Wait Until Element Is Visible    ${DESTINATION}
    Sleep  5s
    Click Element    ${DESTINATION}
    Sleep  7s
    Input Text    ${DESTINATION}    Bordeaux
    Sleep  7s
    Wait Until Element Is Visible    ${BORDEAUX}
    Sleep  5s
    Click Element    ${BORDEAUX}
    Sleep  5s
    Wait Until Element Is Visible    ${DATE}
    Sleep  4s
    Click Element    ${DATE}
    Sleep  5s
    Click Element At Coordinates    683    1966
    Sleep  5s
    Click Element At Coordinates    1012    140
    Sleep  5s
    Wait Until Element Is Visible    ${MOTIF}
    Sleep  3s
    Click Element    ${MOTIF}
    Sleep  3s
    Click Element At Coordinates    278    828
    Sleep  3s
    Click Element At Coordinates    802    1460
    Sleep  3s
    Swipe    36    1615    29    823
    Sleep  2s
    Wait Until Element Is Visible    ${PERSONNE-RENCONTREE}
    Sleep  2s
    Click Element    ${PERSONNE-RENCONTREE}
    Sleep  3s
    Input Text    ${PERSONNE-RENCONTREE}    Elena
    Sleep  3s
    Wait Until Element Is Visible    ${SUBMIT-STEP}
    Sleep  2s
    Click Element    ${SUBMIT-STEP}
    Sleep  3s
    Wait Until Element Is Visible    ${SUBMIT-IK}
    Sleep  2s
    Click Element    ${SUBMIT-IK}
    Sleep  3s
#    Click Element At Coordinates    504    1986



