*** Settings ***
Library     AppiumLibrary

*** Variables ***
#*** Test Variables ***
&{USER1-DETAILS}        email=jdoe@mail.com  password=doedoedoe

#*** Login Page ***
${LOGIN-EMAIL-FIELD}      //android.widget.EditText[@password="false"]
${LOGIN-PASSWORD-FIELD}     //android.widget.EditText[@password="true"]
${LOGIN-SIGNIN-BUTTON}      //android.widget.Button[@text="JE ME CONNECTE"]

*** Test Cases ***
Login
    Open Application  http://localhost:4723/wd/hub  platformName=Android  deviceName=emulator-5554  appPackage=com.karburan.portage  appActivity=com.karburan.portage.MainActivity  automationName=Uiautomator2
    Wait Until Page Contains Element  ${LOGIN-EMAIL-FIELD}  timeout= 60
    Input Text  ${LOGIN-EMAIL-FIELD}  ${USER1-DETAILS}[email]
    Input Text  ${LOGIN-PASSWORD-FIELD}  ${USER1-DETAILS}[password]
    Click Element  ${LOGIN-SIGNIN-BUTTON}






