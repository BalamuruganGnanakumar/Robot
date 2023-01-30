*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Resource    ../../TestScripts/Pages/Common.robot
*** Variables ***
#coveragetermheader

${cthaddrowbtn}        xpath://button[contains(text(), 'Add Row')]

${cthFN1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[3]/app-ag-grid-custom-tooltip/span
${cthFN2}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[3]/app-ag-grid-custom-tooltip/span
${cthFN3}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[3]/app-ag-grid-custom-tooltip/span
${cthFN4}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[3]/app-ag-grid-custom-tooltip/span
${cthFN5}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[3]/app-ag-grid-custom-tooltip/span
${cthFN6}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[6]/div[3]/app-ag-grid-custom-tooltip/span

${cthDT1}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[4]/app-ag-grid-item-dropdown/div/div/input
${cthDT2}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[4]/app-ag-grid-item-dropdown/div/div/input
${cthDT3}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[4]/app-ag-grid-item-dropdown/div/div/input
${cthDT4}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[4]/app-ag-grid-item-dropdown/div/div/input
${cthDT5}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[4]/app-ag-grid-item-dropdown/div/div/input
${cthDT6}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[6]/div[4]/app-ag-grid-item-dropdown/div/div/input

${cthSOUR1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-header-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[5]/app-ag-grid-item-dropdown/div/div/input
${cthSOUR1opn}  xpath://span[contains(text(), ' Carrier List ')]
#coveragetermheader data
${cthFN1d}=     Primary Carrier
${cthFN2d}=     Non-admitted
${cthFN3d}=     Limit
${cthFN4d}=     Total Premium
${cthFN5d}=     Total Limit
${cthFN6d}=     Auditable
*** Keywords ***
CoverageTermHeaderForm
    Log To Console    CoverageTermHeaderForm_Started
    Sleep    3
    Take Screenshot
    #ROW1
    Click Button    ${cthaddrowbtn}
    Wait Until Page Contains Element    ${cthFN1}     10
    Click Element   ${cthFN1}
    Press Keys      ${cthFN1}  ${cthFN1d}
    Click Element   ${cthDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${cthSOUR1}     10
    Click Element   ${cthSOUR1}
    Wait Until Page Contains Element    ${cthSOUR1opn}     10
    Click Element   ${cthSOUR1opn}
    Sleep    2
    Log To Console    Row1 Created Successfully
    #ROW2
    Click Button    ${cthaddrowbtn}
    Wait Until Page Contains Element    ${cthFN2}     10
    Click Element   ${cthFN2}
    Press Keys      ${cthFN2}  ${cthFN2d}
    Wait Until Page Contains Element    ${cthDT2}     10
    Click Element   ${cthDT2}
    sleep   2
    Click Element   ${DTopnCBX}
    Sleep    2
    Log To Console    Row2 Created Successfully
    #ROW3
    Click Button    ${cthaddrowbtn}
    Wait Until Page Contains Element    ${cthFN3}     10
    Click Element   ${cthFN3}
    Press Keys      ${cthFN3}  ${cthFN3d}
    Wait Until Page Contains Element    ${cthDT3}     10
    Click Element   ${cthDT3}
    Sleep    2
    Click Element   ${DTopnCUR}
    Sleep    2
    Log To Console    Row3 Created Successfully
    #ROW4
    Click Button    ${cthaddrowbtn}
    Wait Until Page Contains Element    ${cthFN4}     10
    Click Element   ${cthFN4}
    Press Keys      ${cthFN4}  ${cthFN4d}
    Wait Until Page Contains Element    ${cthDT4}     10
    Click Element   ${cthDT4}
    Sleep    2
    Click Element   ${DTopnCUR}
    Sleep    2
    Log To Console    Row4 Created Successfully
    #ROW5
    Click Button    ${cthaddrowbtn}
    Wait Until Page Contains Element    ${cthFN5}     10
    Click Element   ${cthFN5}
    Press Keys      ${cthFN5}  ${cthFN5d}
    Wait Until Page Contains Element    ${cthDT5}     10
    Click Element   ${cthDT5}
    Sleep    2
    Click Element   ${DTopnCUR}
    Sleep    2
    Log To Console    Row5 Created Successfully
    #ROW6
    Click Button    ${cthaddrowbtn}
    Wait Until Page Contains Element    ${cthFN6}     10
    Click Element   ${cthFN6}
    Press Keys      ${cthFN6}  ${cthFN6d}
    Wait Until Page Contains Element    ${cthDT6}     10
    Click Element   ${cthDT6}
    Sleep    2
    Click Element   ${DTopnCBX}
    Sleep    2
    Take Screenshot
    Log To Console    Row6 Created Successfully
    Log To Console    CoverageTermHeaderForm_Completed
    Click Element    ${Continuebtn}
    Sleep    10

