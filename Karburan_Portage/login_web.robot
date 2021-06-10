
** Settings **
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

** Variables **
${LOGIN URL}      https://13:13@portage.karburan.dev.tekoway.com/
${BROWSER}        Chrome
${user_id}          xpath=//input[@name='email']
${password}         xpath=//input[@name='password']
${submit}           //h3[.='JE ME CONNECTE']

** Keywords **
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Bienvenue à bord | Portage Salarial

Enter userid and password
    Input Text  name:email      cyril.caturani@upnbiz.com
    Input Text  name:password   Test123.
Submit Credentials
    Click ${submit}



** Test Cases **
Valid Login
    Open Browser To Login Page
      Input Text     ${user_id}   cyril.caturani@upnbiz.com
    Input Text      ${password}   Test123.
    Submit Form
    Click Element   ${submit}
    sleep   23s


