*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
*** Variables ***
${URL}              https://qa.wsandco.com/ps-Intranet
${BROWSER}          chrome
${username}         sarora
${password}         Woodruff@123$
${username_txbox}   id:cUsername
${password_txbox}   id:cPassword
${LoginBtn}         xpath://button[@class="btn-login"]


*** Keywords ***

LogintoWoodruffPage
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible  ${username_txbox}  10
    Wait Until Element Is Visible  ${password_txbox}  10
    Input Text    ${username_txbox}    ${username}
    Input Text    ${password_txbox}    ${password}
    Click Button    ${LoginBtn}
    sleep  2
    Take Screenshot
    log to console   Login_Page_Completed
    sleep  5