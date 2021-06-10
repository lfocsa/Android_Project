*** Settings ***
Library     AppiumLibrary

*** Variables ***

#*** Login Page ***
${GET-STARTED}      //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View
${TOGGLE-1}     //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[3]/android.view.View[3]/android.widget.CheckBox/android.view.View[1]/android.view.View/android.view.View
${TOGGLE-2}     //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[3]/android.view.View[5]/android.widget.CheckBox/android.view.View[1]/android.view.View/android.view.View
${TOGGLE-3}     //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[3]/android.view.View[7]/android.widget.CheckBox/android.view.View[1]/android.view.View/android.view.View

*** Keywords ***
List Contexts
  ${contexts}                               Get Contexts
  ${native}                                 Get From List           ${contexts}           0
  ${webview}                                Get From List           ${contexts}           -1
  Set Test Variable                         ${native}
  Set Test Variable                         ${webview}

*** Test Cases ***
Login
    Open Application  http://localhost:4723/wd/hub  platformName=Android  deviceName=emulator-5554  appPackage=com.raiffeisen.smart.market  appActivity=com.raiffeisen.smart.market.MainActivity  automationName=UIautomator2
    SLEEP  20s
    List Contexts
    Switch To Context                         ${webview}
    Wait Until Element Is Visible  ${GET-STARTED}
    SLEEP  20s
    Click Element  ${GET-STARTED}
    SLEEP  20s
    Switch To Context                         ${native}
