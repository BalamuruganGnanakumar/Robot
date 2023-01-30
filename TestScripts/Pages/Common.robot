*** Settings ***
Library     SeleniumLibrary
Library    Screenshot

#Library    AllureReportingLibrary


*** Variables ***
#Common
${URL}              https://qa.wsandco.com/ps-Intranet
${BROWSER}          chrome
${username}         sarora
${password}         Woodruff@123$
${username_txbox}   id:cUsername
${password_txbox}   id:cPassword
${LoginBtn}         xpath://button[@class="btn-login"]
${SCREENSHOTDIR}=   D:\Robot\R1\results\screenshots
${Quicklinks}       id:dropdownToggleWorksApp
${PandC}            xpath://a[@id='aP&C Portal']
${formslink}        xpath://a[contains(text(), 'FORMS')]
${ProdConfig}       xpath://label[contains(text(), 'Product Configurator')]             #id:btnProductConfigurator
${SearchBtn}        xpath://button[@id='btnSearch' and @class='renewal-search-fil btn-prop-search']
${Addproductbtn}     xpath://a[@class='o-button btn-add-new-prod' and @role='button']
${Continuebtn}      xpath://span[contains(text(), 'Continue')]

#DATATYPE OPTIONS
${DTopnATT}     xpath://span[contains(text(), ' Attachment ') and @class="mat-option-text"]
${DTopnCAL}     xpath://span[contains(text(), ' Calculation ') and @class="mat-option-text"]
${DTopnCBX}     xpath://span[contains(text(), ' Checkbox ') and @class="mat-option-text"]
${DTopnCUR}     xpath://span[contains(text(), ' Currency ') and @class="mat-option-text"]
${DTopnDAT}     xpath://span[contains(text(), ' Date ') and @class="mat-option-text"]
${DTopnDDN}     xpath://span[contains(text(), ' Drop Down ') and @class="mat-option-text"]
${DTopnLOC}     xpath://span[contains(text(), ' Location') and @class="mat-option-text"]
${DTopnLOO}     xpath://span[contains(text(), ' Lookup ') and @class="mat-option-text"]
${DTopnNUM}     xpath://span[contains(text(), ' Number ') and @class="mat-option-text"]
${DTopnPER}     xpath://span[contains(text(), ' Percentage ') and @class="mat-option-text"]
${DTopnTXT}     xpath://span[contains(text(), ' Text Box ') and @class="mat-option-text"]

#SOURCE LOOKUP OPTION
${SOURopnASL}      xpath://span[contains(text(), ' Auto Symbol List ') and @class="mat-option-text"]
${SOURopnCTL}      xpath://span[contains(text(), ' Coverage Type List ') and @class="mat-option-text"]
${SOURopnCL}       xpath://span[contains(text(), ' Carrier List ') and @class="mat-option-text"]
${SOURopnDL}       xpath://span[contains(text(), ' Deductible List ') and @class="mat-option-text"]
${SOURopnRTL}       xpath://span[contains(text(), ' Rating Type List ') and @class="mat-option-text"]

#EXPRESSION OPTION

${Exp1}       xpath://span[contains(text(), ' Variable ')]
${Exp2}       xpath://span[contains(text(), ' Operator ')]
${Exp3}       xpath://span[contains(text(), ' Constant ')]

#COMMON ELEMENTS


${saverule}     xpath://button[contains(text(), 'Save')]
${CLOSE}        xpath://mat-icon[contains(text(), 'close')]

${Finalizebtn}     xpath://span[contains(text(), 'Finalize')]
${Publish}      xpath://button[contains(text(), 'Publish')]

${productlistlink}      xpath://span[contains(text(), 'Product List')]
${Product1}		xpath:/html/body/app-root/div/div/app-home/div/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[10]/app-ag-grid-custom-buttons/div/div[1]

${type1}    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[2]/app-ag-grid-item-lookup/div/div/input
${type2}    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[2]/app-ag-grid-item-lookup/div/div/input
${type3}    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[2]/app-ag-grid-item-lookup/div/div/input
${type4}    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[2]/app-ag-grid-item-lookup/div/div/input
${type5}    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[2]/app-ag-grid-item-lookup/div/div/input

${Field1}    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[3]/app-ag-grid-item-lookup/div/div/input
${Field2}    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[3]/app-ag-grid-item-lookup/div/div/input
${Field3}    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[3]/app-ag-grid-item-lookup/div/div/input
${Field4}    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[3]/app-ag-grid-item-lookup/div/div/input
${Field5}    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[3]/app-ag-grid-item-lookup/div/div/input

*** Keywords ***

NavigatetoProductConfigurator
    log to console   NavigatetoProductConfigurator Started
    Wait For Condition	return document.readyState == "complete"
    Title Should Be    Woodruff - Workbench
    Wait Until Element Is Visible  ${Quicklinks}  10
    Click Element   ${Quicklinks}
    log to console   Clicked on Quicklink
    Wait Until Element Is Visible  ${PandC}  20
    Click Element   ${PandC}
    log to console   Clicked on PandC
    Sleep    10
    Switch Window   Property And Casualty
    log to console   Switch Window to New Tab
#    Wait For Condition	return document.readyState == "complete"
    Sleep    22
#    Wait Until Page Contains    ${formslink}    40s
#    Wait Until Element Is Visible   ${formslink}  40
#    Wait Until Element Is Enabled   ${formslink}    40
#    Wait For Condition	return document.readyState == "complete"
#    Wait Until Element Is Visible   ${SearchBtn}  40
#    Wait Until Element Is Enabled   ${SearchBtn}    40
    Click Element   ${formslink}
    log to console   Clicked on Forms
    Wait For Condition	return document.readyState == "complete"
    Wait Until Element Is Visible  ${ProdConfig}  40
    Wait Until Element Is Enabled  ${ProdConfig}    40
    Take Screenshot
    Click Element   ${ProdConfig}
    log to console   Clicked on Program Config
    Wait For Condition	return document.readyState == "complete"
    Wait For Condition	return document.readyState == "complete"
    Take Screenshot
    log to console   NavigatetoProductConfigurator Completed