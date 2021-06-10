*** Settings ***
Library  AppiumLibrary

*** Variables ***
${EMAIL_FIELD}      //android.widget.EditText[@password="false"]
${PASSWORD_FIELD}       //android.widget.EditText[@password="true"]
${SIGNIN-BUTTON1}        //android.widget.Button[@text="JE ME CONNECTE"]
${SIGNIN-BUTTON2}        //android.widget.Button[contains(@text,"JE ME CONNECTE")]

*** Test Cases ***
Open Application
    Open Application  http://localhost:4723/wd/hub  platformName=Android  deviceName=emulator-5554  appPackage=com.karburan.portage  appActivity=com.karburan.portage.MainActivity  automationName=Uiautomator2
    Wait Until Page Contains Element        ${EMAIL_FIELD}  timeout= 30
    Wait Until Page Contains Element        ${PASSWORD_FIELD}
    Wait Until Page Contains Element        ${SIGNIN-BUTTON1}
    Wait Until Page Contains Element        ${SIGNIN-BUTTON2}





