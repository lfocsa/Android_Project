*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}                 http://127.0.0.1:4723/wd/hub
${platformName}               Android
${deviceName}                 emulator-5554
${appPackage}                 com.karburan.portage
${appActivity}                com.karburan.portage.MainActivity
${automationName}             UiAutomator2
${ensureWebviewsHavePages}    true
#*** User ***
&{USER1-DETAILS}         email=giron@giron.fr  password=girongiron
#*** Login Page ***
${LOGIN-EMAIL-FIELD}     //android.widget.EditText[@password="false"]
${LOGIN-PASSWORD-FIELD}  //android.widget.EditText[@password="true"]
${LOGIN-SIGNIN-BUTTON}   //android.widget.Button[@text="JE ME CONNECTE"]
#*** Dashboard ***
${Burger-menu}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.widget.Button
#*** Prestations ***
${Prestations-tab}       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[3]/android.widget.TabWidget/android.view.View[2]/android.view.View
${Clients-section}       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
${Add-client}            //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View/android.widget.Button
${Type-client}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.Button
${Nom-organisme}         //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${Pays}                  //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View[3]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${Pays-1st-element}      //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
${Siret}                 //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText

${Nom-contact}           /
${Adresse}               /
${Code-postal}           /
${Ville}                 /
${E-mail}                /

${Enregistrer}           //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.app.Dialog/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.widget.Button




*** Test Cases ***
Login
    Open Application    ${REMOTE_URL}   platformName=${platformName}  deviceName=${deviceName}  appPackage=${appPackage}  appActivity=${appActivity}  automationName=${automationName}  ensureWebviewsHavePages=${ensureWebviewsHavePages}
    Wait Until Page Contains Element  ${LOGIN-EMAIL-FIELD}  timeout= 60
    Input Text  ${LOGIN-EMAIL-FIELD}  ${USER1-DETAILS}[email]
    Input Text  ${LOGIN-PASSWORD-FIELD}  ${USER1-DETAILS}[password]
    Click Element  ${LOGIN-SIGNIN-BUTTON}

# Dashboard
    Wait Until Element Is Visible   ${Burger-menu}
    Swipe    27    1849    15    73
    Sleep  5s
# Prestations
    Wait Until Element Is Visible   ${Prestations-tab}
    Sleep  5s
    Click Element   ${Prestations-tab}
    Sleep  3s
# Client
    Click Element   ${Clients-section}
    Sleep  3s
# Ajouter un client button
    Click Element   ${Add-client}
    Sleep  3s
# Type de client
    Click Element   ${Type-client}
    Sleep  3s
    Click Element At Coordinates    294    891
    Sleep  3s
    Click Element At Coordinates    786    1400
    Sleep  3s
# Nom de l'organisme
    Click Element   ${Nom-organisme}
    Sleep  3s
    Input Text  ${Nom-organisme}  Test Elena
    Sleep  2s
    Swipe    39    1151    29    611
    Sleep  5s
# Pays
    Click Element   ${Pays}
    Sleep  2s
    Click Element   ${Pays-1st-element}
    Sleep  3s
#    Tap    undefined    342    909
#Tap    undefined    279    1048
# Siret
    Click Element   ${Siret}
    Sleep  2s
    Input Text   ${Siret}   123456789
    Sleep  3s
    Swipe    29    1354    17    726
    Sleep  2s
# Nom du contact
#    Click Element   ${Nom-contact}
#    Sleep  2s
#    Input Text   ${Nom-contact}   Elena
#    Sleep  3s
# Adresse
    Click Element   ${Adresse}
    Sleep  2s
    Input Text   ${Adresse}  V.Alecsandri
    Sleep  2s
    Swipe    29    1229    15    657
    Sleep  3s
# Code postal
    Click Element   ${Code-postal}
    Sleep  2s
    Input Text   ${Code-postal}  12345
    Sleep  2s
# Ville
    Click Element   ${Ville}
    Sleep  2s
    Input Text   ${Ville}  Chisinau
    Sleep  2s
# E-mail
    Click Element   ${E-mail}
    Sleep  2s
    Input Text   ${E-mail}   elena.focsa@gmail.com
    Sleep  2s
    Swipe    42    1356    34    506
    Sleep  2s
    Click Element   ${Enregistrer}
#    Tap    undefined    479    1251







