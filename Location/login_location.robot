*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}      http://127.0.0.1:4723/wd/hub
${platformName}    Android
${platformVersion}      11.0
${deviceName}      emulator-5554
${appPackage}      com.karburan.location
${appActivity}     com.karburan.location.MainActivity
${automationName}    UiAutomator2
${ensureWebviewsHavePages}    true

*** Test Cases ***
Login
    Open Application    ${REMOTE_URL}   platformName=${platformName}  platformVersion=${platformVersion}  deviceName=${deviceName}  appPackage=${appPackage}  appActivity=${appActivity}  automationName=${automationName}  ensureWebviewsHavePages=${ensureWebviewsHavePages}
 #   Sleep  10s
 #   Wait Until Element Is Visible       //*[@resource-id='e9ad72b0-bab0-48b0-90c2-f73f10543516']
 #  //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View[4]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
 #  Click Element    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View[4]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
 #  Input Text    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View[4]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText    locataire@valide.com
