*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Resource    ../../TestScripts/Pages/Common.robot
*** Variables ***
#program header
${addrowbtn}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-header-tab-component/div/app-re-usable-grid-for-all-tabs/div/button[1]
${FN1}      xpath://span[@class="mat-tooltip-trigger left-align" and @cdk-describedby-host="0"]
${DT1}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[4]/app-ag-grid-item-dropdown/div/div/input
${DT2}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[4]
${DT3}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[4]
${DT4}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[4]
${DT5}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[4]
${DT6}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[6]/div[4]
${SOUR}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[5]/app-ag-grid-item-dropdown
# Program Header Data
${FN1d}=    Primary Carrier
${FN2d}=    Non-admitted
${FN3d}=    Limit
${FN4d}=    Total Premium
${FN5d}=    Total Limit
${FN6d}=    Auditable

*** Keywords ***
ProgramHeaderForm
    #Row1
    Sleep    5
    Take Screenshot
    Wait Until Page Contains Element    ${addrowbtn}  10
    Wait Until Element Is Enabled    ${addrowbtn}     5
    Click Button    ${addrowbtn}
    Wait Until Page Contains Element    ${FN1}  10
    Wait Until Element Is Enabled    ${FN1}     5
    Click Element   ${FN1}
    Press Keys  ${FN1}  ${FN1d}
    Wait Until Page Contains Element    ${DT1}  10
    Wait Until Element Is Enabled    ${DT1}     5
    Click Element   ${DT1}
    Wait Until Page Contains Element    ${DTopnLOO}  10
    Wait Until Element Is Enabled    ${DTopnLOO}     5
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${SOUR}  10
    Wait Until Element Is Enabled    ${SOUR}     5
    Click Element   ${SOUR}
    Wait Until Page Contains Element    ${SOURopnCL}  10
    Wait Until Element Is Enabled    ${SOURopnCL}     5
    Click Element   ${SOURopnCL}
    sleep   2
    #Row2
    Click Button    ${addrowbtn}
    Wait Until Page Contains Element    ${FN1}  10
    Wait Until Element Is Enabled    ${FN1}     5
    Click Element   ${FN1}
    Press Keys  ${FN1}  ${FN2d}
    Wait Until Page Contains Element    ${DT2}  10
    Wait Until Element Is Enabled    ${DT2}     5
    Click Element   ${DT2}
    Wait Until Page Contains Element    ${DTopnCBX}  10
    Wait Until Element Is Enabled    ${DTopnCBX}     5
    Click Element   ${DTopnCBX}
    sleep   2
    #Row3
    Click Button    ${addrowbtn}
    Wait Until Page Contains Element    ${FN1}  10
    Wait Until Element Is Enabled    ${FN1}     5
    Click Element   ${FN1}
    Press Keys  ${FN1}  ${FN3d}
    Wait Until Page Contains Element    ${DT3}  10
    Wait Until Element Is Enabled    ${DT3}     5
    Click Element   ${DT3}
    Wait Until Page Contains Element    ${DTopnCUR}  10
    Wait Until Element Is Enabled    ${DTopnCUR}     5
    Click Element   ${DTopnCUR}
    sleep   2
    #Row4
    Click Button    ${addrowbtn}
    Wait Until Page Contains Element    ${FN1}  10
    Wait Until Element Is Enabled    ${FN1}     5
    Click Element   ${FN1}
    Press Keys  ${FN1}  ${FN4d}
    Wait Until Page Contains Element    ${DT4}  10
    Wait Until Element Is Enabled    ${DT4}     5
    Click Element   ${DT4}
    Wait Until Page Contains Element    ${DTopnCUR}  10
    Wait Until Element Is Enabled    ${DTopnCUR}     5
    Click Element   ${DTopnCUR}
    sleep   2
    #Row5
    Click Button    ${addrowbtn}
    Wait Until Page Contains Element    ${FN1}  10
    Wait Until Element Is Enabled    ${FN1}     5
    Click Element   ${FN1}
    Press Keys  ${FN1}  ${FN5d}
    Wait Until Page Contains Element    ${DT5}  10
    Wait Until Element Is Enabled    ${DT5}     5
    Click Element   ${DT5}
    Wait Until Page Contains Element    ${DTopnCUR}  10
    Wait Until Element Is Enabled    ${DTopnCUR}     5
    Click Element   ${DTopnCUR}
    sleep   2
    #Row6
    Click Button    ${addrowbtn}
    Wait Until Page Contains Element    ${FN1}  10
    Wait Until Element Is Enabled    ${FN1}     5
    Click Element   ${FN1}
    Press Keys  ${FN1}  ${FN6d}
    Wait Until Page Contains Element    ${DT6}  10
    Wait Until Element Is Enabled    ${DT6}     5
    Click Element   ${DT6}
    Wait Until Page Contains Element    ${DTopnCBX}  10
    Wait Until Element Is Enabled    ${DTopnCBX}     5
    Click Element   ${DTopnCBX}
    sleep   2
    Take Screenshot
    Click Element    ${Continuebtn}
    Wait For Condition	return document.readyState == "complete"
    log to console   Programheader_Completed