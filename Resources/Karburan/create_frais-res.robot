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
#*** Depenses ***
${DEPENSES-TAB}          //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[3]/android.widget.TabWidget/android.view.View[3]/android.view.View
${ADD-DEPENSE}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[2]/android.view.View/android.widget.Button
#*** Frais ***
${UPLOAD-FILE}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View[1]
${FILE}                  //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.LinearLayout
${DATE-FACTURE}          //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${NR-FACTURE}            //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${FOURNISSEUR}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${CATEGORIE}             //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.Button
${MONTANT}               //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]/android.view.View[5]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${PASS-BUTTON}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[5]/android.view.View/android.widget.Button


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
# Telecharger -> Frais
    Click Element   ${UPLOAD-FILE}
    Sleep  5s
# Choose File
    Click Element   ${FILE}
    Sleep  15s
# Date De Facture
    Click Element   ${DATE-FACTURE}
    Sleep  10s
    Click Element At Coordinates    392     494
    Sleep  5s
    Click Element At Coordinates    1005    134
    Sleep  5s
# Numero de facture
    Click Element   ${NR-FACTURE}
    Sleep  3s
    Input Text      ${NR-FACTURE}   10
    Sleep  3s
# Fournisseur
    Click Element   ${FOURNISSEUR}
    Sleep  3s
    Input Text      ${FOURNISSEUR}  Provider
    Sleep  3s
# Categorie
    Click Element   ${CATEGORIE}
    Sleep  5s
    Click Element At Coordinates    251    819
    Sleep  5s
    Click Element At Coordinates    826    1480
    Sleep  3s

# Montant
    Click Element    ${MONTANT}
    Sleep  3s
    Click Element At Coordinates    940    1877
    Sleep  2s
    Click Element At Coordinates    940    1875
    Sleep  2s
    Click Element At Coordinates    855    1853
    Sleep  2s
    Click Element At Coordinates    921    1863
    Sleep  2s
    Click Element At Coordinates    674    1858
    Sleep  2s
    Click Element At Coordinates    408    1998
    Sleep  2s
    Click Element At Coordinates    925    2001
    Sleep  2s
    Swipe    22    1369    12    75
    Sleep  2s
    Click Element At Coordinates    10    1365
    Sleep  5s
# Click Element   ${Pass-button}
    Click Element At Coordinates    496    1990