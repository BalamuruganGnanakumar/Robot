*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library    XML
Resource    ../../TestScripts/Pages/Common.robot
*** Variables ***
#Program Structure
${psFN1}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[3]/app-ag-grid-custom-tooltip/span
${psFN2}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[3]/app-ag-grid-custom-tooltip/span
${psFN3}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[3]/app-ag-grid-custom-tooltip/span
${psFN4}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[3]/app-ag-grid-custom-tooltip/span
${psFN5}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[3]/app-ag-grid-custom-tooltip/span
${psFN6}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[6]/div[3]/app-ag-grid-custom-tooltip/span
${psFN7}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[7]/div[3]/app-ag-grid-custom-tooltip/span
${psFN8}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[8]/div[3]/app-ag-grid-custom-tooltip/span
${psFN9}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[9]/div[3]/app-ag-grid-custom-tooltip/span
${psFN10}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[10]/div[3]/app-ag-grid-custom-tooltip/span
${psFN11}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[11]/div[3]/app-ag-grid-custom-tooltip/span
${psFN12}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[12]/div[3]/app-ag-grid-custom-tooltip/span
${psFN13}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[13]/div[3]/app-ag-grid-custom-tooltip/span
${psFN14}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[14]/div[3]/app-ag-grid-custom-tooltip/span
${psFN15}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[15]/div[3]/app-ag-grid-custom-tooltip/span
${psFN16}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[16]/div[3]/app-ag-grid-custom-tooltip/span
${psFN17}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[17]/div[3]/app-ag-grid-custom-tooltip/span

${psDT1}        xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT1opn}     xpath://span[contains(text(), 'Checkbox')]
${psDT2}        xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT2opn}     xpath://span[contains(text(), ' Lookup ')]
${psDT3}        xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT3opn}     xpath://span[contains(text(), ' Text Box ')]
${psDT4}        xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT4opn}     xpath://span[contains(text(), ' Drop Down ')]
${psDT5}        xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT5opn}     xpath://span[contains(text(), ' Lookup ')]
${psDT6}        xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[6]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT6opn}     xpath://span[contains(text(), 'Checkbox')]
${psDT7}        xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[7]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT7opn}     xpath://span[contains(text(), ' Drop Down ')]
${psDT8}        xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[8]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT8opn}     xpath://span[contains(text(), ' Currency ')]
${psDT9}        xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[9]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT9opn}     xpath://span[contains(text(), ' Currency ')]
${psDT10}       xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[10]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT10opn}    xpath://span[contains(text(), ' Percentage ')]
${psDT11}       xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[11]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT11opn}    xpath://span[contains(text(), ' Currency ')]
${psDT12}       xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[12]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT12opn}    xpath://span[contains(text(), ' Percentage ')]
${psDT13}       xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[13]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT13opn}    xpath://span[contains(text(), ' Number ')]
${psDT14}       xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[14]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT14opn}    xpath://span[contains(text(), 'Checkbox')]
${psDT15}       xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[15]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT15opn}    xpath://span[contains(text(), ' Calculation ')]
${NewRules15}       xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[2]/div/span/app-ag-grid-item-lookup/div/div/input
${psAddrul15}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[15]/div[5]/app-ag-grid-item-rules/div/button
${psDT16}       xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[16]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT16opn}    xpath://span[contains(text(), ' Calculation ')]
${NewRules16}       xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[2]/div/span/app-ag-grid-item-lookup/div/div/input
${psAddrul16}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[16]/div[5]/app-ag-grid-item-rules/div/button
${psDT17}       xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[17]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT17opn}    xpath://span[contains(text(), ' Attachment ')]

${psSOUR2}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[5]/app-ag-grid-item-dropdown/div/div/input
${psSOUR2opn}   xpath://span[contains(text(), ' Coverage Type List ')]
${psSOUR4}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[5]/app-ag-grid-item-dropdown/div/div/input
${psSOUR4d}=    E&S, WS
${psSOUR5}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[5]/app-ag-grid-item-dropdown/div/div/input
${psSOUR5opn}    xpath://span[contains(text(), ' Carrier List ')]
${psSOUR7}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[7]/div[5]/app-ag-grid-item-dropdown/div/div/input
${psSOUR7d}=    Quote, Indication

${Addrowrule}      xpath://button[contains(text(), 'Add Row') and @class='o-button btn-add-row ng-star-inserted']


${Ruletype}         xapth:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[2]/div/span/app-ag-grid-item-lookup/div/div/input
${custruleopn}     xpath://span[contains(text(), ' Add Custom Rule ')]
${psaddrowbtn}      xpath://button[contains(text(), 'Add Row')]
#Program Structure Data
${psFN1d}=  Include in Proposal
${psFN2d}=  Line
${psFN3d}=  Layer Description
${psFN4d}=  Access Point
${psFN5d}=  Carrier
${psFN6d}=  Non-Admitted
${psFN7d}=  Quote Type
${psFN8d}=  Limit
${psFN9d}=  Attachment Point
${psFN10d}=     Participation
${psFN11d}=     Gross Layer Premium
${psFN12d}=     Commission(%)
${psFN13d}=     Rebated Commission
${psFN14d}=     Applies to All
${psFN15d}=     Net Layer Premium
${psFN16d}=     Net Share Premium
${psFN17d}=     Attach
${15Field1opn}  xpath://span[contains(text(), ' ps_Gross Layer Premium ')]
${15Field2opn}    xpath://span[contains(text(), ' * Multipy ')]
${15Field3opn}    xpath://span[contains(text(), ' ps_Rebated Commission ')]
${15Field4opn}    xpath://span[contains(text(), ' / Divide ')]
${15Field5opn}=     100
${16Field1opn}  xpath://span[contains(text(), ' ps_Net Layer Premium ')]
${16Field2opn}    xpath://span[contains(text(), ' * Multipy ')]
${16Field3opn}    xpath://span[contains(text(), ' ps_Participation ')]
${16Field4opn}    xpath://span[contains(text(), ' / Divide ')]
${16Field5opn}=     100

*** Keywords ***
ProgramStructureForm
    Log To Console    ProgramStructureForm_Started
    Sleep    5
    Take Screenshot
    #ROW1
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN1}     10
    Click Element   ${psFN1}
    Press Keys  ${psFN1}  ${psFN1d}
    Wait Until Page Contains Element    ${psDT1}     10
    Click Element   ${psDT1}
    Wait Until Page Contains Element    ${DTopnCBX}     10
    Click Element   ${DTopnCBX}
    Sleep    2
    Log To Console    Row1 Created Successfully
    #ROW2------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN2}     10
    Click Element   ${psFN2}
    Press Keys  ${psFN2}  ${psFN2d}
    Wait Until Page Contains Element    ${psDT2}     10
    Click Element   ${psDT2}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${psSOUR2}      10
    Click Element   ${psSOUR2}
    Wait Until Page Contains Element    ${psSOUR2opn}   10
    Click Element   ${SOURopnCTL}
    sleep   2
    Log To Console    Row2 Created Successfully
    #ROW3--------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN3}        10
    Click Element   ${psFN3}
    Press Keys  ${psFN3}  ${psFN3d}
    Wait Until Page Contains Element    ${psDT3}        10
    Click Element   ${psDT3}
    Wait Until Page Contains Element    ${DTopnTXT}      10
    Click Element   ${DTopnTXT}
    Sleep    2
    Log To Console    Row3 Created Successfully
    #ROW4----------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN4}        10
    Click Element   ${psFN4}
    Press Keys  ${psFN4}  ${psFN4d}
    Wait Until Page Contains Element    ${psDT4}        10
    Click Element   ${psDT4}
    Wait Until Page Contains Element    ${DTopnDDN}     10
    Click Element   ${DTopnDDN}
    Wait Until Page Contains Element    ${psSOUR4}      10
    Click Element   ${psSOUR4}
    Press Keys  ${psSOUR4}    ${psSOUR4d}
    sleep   2
    Log To Console    Row4 Created Successfully
    #ROW5---------------------------------------------------------- START FROM HERE
    Click Button    ${psaddrowbtn}
    Sleep    2
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN5}        10
    Set Focus To Element    ${psFN5}
    Click Element   ${psFN5}
    Press Keys  ${psFN5}  ${psFN5d}
    Wait Until Page Contains Element    ${psDT5}        10
    Click Element   ${psDT5}
    Wait Until Page Contains Element    ${psDT5opn}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${psSOUR5}      10
    Click Element   ${psSOUR5}
    Wait Until Page Contains Element    ${psSOUR5opn}   10
    Click Element  ${SOURopnCL}
    sleep   2
    Log To Console    Row5 Created Successfully
    #ROW6-----------------------------------------------------
    Click Button    ${psaddrowbtn}
    #sleep   1
    Wait Until Page Contains Element    ${psFN6}        10
    Click Element   ${psFN6}
    Wait Until Element Is Enabled    ${psFN5}
    Press Keys  ${psFN6}  ${psFN6d}
    Wait Until Page Contains Element    ${psDT6}        10
    Click Element   ${psDT6}
    Wait Until Page Contains Element    ${DTopnCBX}     10
    Click Element   ${DTopnCBX}
    sleep   2
    Log To Console    Row6 Created Successfully
    #ROW7------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN7}        10
    Click Element   ${psFN7}
    Press Keys  ${psFN7}  ${psFN7d}
    Wait Until Page Contains Element    ${psDT7}        10
    Click Element   ${psDT7}
    Wait Until Page Contains Element    ${DTopnDDN}     10
    Click Element   ${DTopnDDN}
    Wait Until Page Contains Element    ${psSOUR7}      10
    Click Element   ${psSOUR7}
    Press Keys  ${psSOUR7}    ${psSOUR7d}
    Click Button    ${psaddrowbtn}
    Sleep    2
    Log To Console    Row7 Created Successfully
    #ROW8-------------------------------------------------------
    Click Button    ${psaddrowbtn}
    sleep   2
    #Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN8}        10
    Click Element   ${psFN8}
    Press Keys  ${psFN8}  ${psFN8d}
    Wait Until Page Contains Element    ${psDT8}        10
    Click Element   ${psDT8}
    Wait Until Page Contains Element    ${DTopnCUR}     10
    Click Element   ${DTopnCUR}
    Sleep    2
    Log To Console    Row8 Created Successfully
    #ROW9---------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN9}        10
    Click Element   ${psFN9}
    Press Keys  ${psFN9}  ${psFN9d}
    Wait Until Page Contains Element    ${psDT9}        10
    Click Element   ${psDT9}
    Wait Until Page Contains Element    ${DTopnCUR}     10
    Click Element   ${DTopnCUR}
    Sleep    2
    Log To Console    Row9 Created Successfully
    #ROW10---------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN10}     10
    Click Element   ${psFN10}
    Press Keys  ${psFN10}  ${psFN10d}
    Wait Until Page Contains Element    ${psDT10}     10
    Click Element   ${psDT10}
    Wait Until Page Contains Element    ${DTopnPER}     10
    Click Element   ${DTopnPER}
    Sleep    2
    Log To Console    Row10 Created Successfully
    #ROW11---------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN11}     10
    Click Element   ${psFN11}
    Press Keys  ${psFN11}  ${psFN11d}
    Wait Until Page Contains Element    ${psDT11}     10
    Click Element   ${psDT11}
    Wait Until Page Contains Element    ${DTopnCUR}     10
    Click Element   ${DTopnCUR}
    Sleep    2
    Log To Console    Row11 Created Successfully
    #ROW12---------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN12}     10
    Click Element   ${psFN12}
    Press Keys  ${psFN12}  ${psFN12d}
    Wait Until Page Contains Element    ${psDT12}     10
    Click Element   ${psDT12}
    Wait Until Page Contains Element    ${DTopnPER}     10
    Click Element   ${DTopnPER}
    Sleep    2
    Log To Console    Row12 Created Successfully
    #ROW13------------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN13}     10
    Click Element   ${psFN13}
    Press Keys  ${psFN13}  ${psFN13d}
    Wait Until Page Contains Element    ${psDT13}     10
    Click Element   ${psDT13}
    Wait Until Page Contains Element    ${DTopnNUM}   10
    Click Element   ${DTopnNUM}
    Sleep    2
    Log To Console    Row13 Created Successfully
    #ROW14------------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN14}     10
    Click Element   ${psFN14}
    Press Keys  ${psFN14}  ${psFN14d}
    Wait Until Page Contains Element    ${psDT14}     10
    Click Element   ${psDT14}
    Wait Until Page Contains Element    ${DTopnCBX}   10
    Click Element   ${DTopnCBX}
    Sleep    2
    Log To Console    Row14 Created Successfully
    #ROW15--------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN15}           10
    Click Element   ${psFN15}
    Press Keys  ${psFN15}  ${psFN15d}
    Wait Until Page Contains Element    ${psDT15}           10
    Click Element   ${psDT15}
    Wait Until Page Contains Element    ${DTopnCAL}         10
    Click Element   ${DTopnCAL}
    Wait Until Page Contains Element    ${psAddrul15}       10
    Click Element   ${psAddrul15}
    Wait Until Page Contains Element    ${Addrowrule}       10
    Click Element   ${Addrowrule}
    Wait Until Page Contains Element    ${NewRules15}       10
    Click Element   ${NewRules15}
    Wait Until Page Contains Element    ${custruleopn}      10
    Click Element   ${custruleopn}
    Sleep    2
    Click Element   ${Addrowrule}
    Click Element   ${type1}
    Click Element   ${Exp1}
    Click Element   ${Field1}
    Click Element   ${15Field1opn}
    log to console  Row1_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type2}
    Click Element   ${Exp2}
    Click Element   ${Field2}
    Click Element   ${15Field2opn}
    log to console  Row2_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type3}
    Click Element   ${Exp1}
    Click Element   ${Field3}
    Click Element   ${15Field3opn}
    log to console  Row3_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type4}
    Click Element   ${Exp2}
    Click Element   ${Field4}
    Click Element   ${15Field4opn}
    log to console  Row4_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type5}
    Click Element   ${Exp3}
    Click Element   ${Field5}
    Press Keys      ${Field5}   ${15Field5opn}
    log to console  Row5_completed
    Click Element    ${saverule}
    Sleep    3
    Click Element    ${CLOSE}
    Sleep    2
    Log To Console    Row15 Created Successfully
    #ROW16
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN16}        10
    Click Element   ${psFN16}
    Press Keys  ${psFN16}  ${psFN16d}
    Wait Until Page Contains Element    ${psDT16}        10
    Click Element   ${psDT16}
    Wait Until Page Contains Element    ${DTopnCAL}        10
    Click Element   ${DTopnCAL}
    Sleep    2
    Wait Until Page Contains Element    ${psAddrul16}        10
    Click Element   ${psAddrul16}
    Wait Until Page Contains Element    ${Addrowrule}        10
    Click Element   ${Addrowrule}
    Wait Until Page Contains Element    ${NewRules16}        10
    Click Element   ${NewRules16}
    Wait Until Page Contains Element    ${custruleopn}        10
    Click Element   ${custruleopn}
    Sleep    2
    Click Element   ${Addrowrule}
    Click Element   ${type1}
    Click Element   ${Exp1}
    Click Element   ${Field1}
    Click Element   ${16Field1opn}
    log to console  Row1_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type2}
    Click Element   ${Exp2}
    Click Element   ${Field2}
    Click Element   ${16Field2opn}
    log to console  Row2_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type3}
    Click Element   ${Exp1}
    Click Element   ${Field3}
    Click Element   ${16Field3opn}
    log to console  Row3_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type4}
    Click Element   ${Exp2}
    Click Element   ${Field4}
    Click Element   ${16Field4opn}
    log to console  Row4_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type5}
    Click Element   ${Exp3}
    Click Element   ${Field5}
    Press Keys      ${Field5}   ${16Field5opn}
    Sleep    5
    Click Element    ${saverule}
    Sleep    2
    Click Element    ${CLOSE}
    Sleep    2
    Log To Console    Row16 Created Successfully
    #ROW17---------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN17}        10
    Click Element   ${psFN17}
    Press Keys  ${psFN17}  ${psFN17d}
    Wait Until Page Contains Element    ${psDT17}        10
    Click Element   ${psDT17}
    Wait Until Page Contains Element    ${DTopnATT}        10
    Click Element   ${DTopnATT}
    Sleep    2
    Take Screenshot
    Click Element    ${Continuebtn}
    Sleep    4
    Log To Console    Row17 Created Successfully
    Log To Console    ProgramStructureForm_Completed