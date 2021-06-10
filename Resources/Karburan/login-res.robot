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
    Sleep  3s