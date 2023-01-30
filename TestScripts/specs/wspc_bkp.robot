*** settings ***
Library           SeleniumLibrary
Library    XML

*** variables ***
${URL}              https://qa.wsandco.com/ps-Intranet
${BROWSER}          chrome
${username}         sarora
${password}         Woodruff@123$
${username_txbox}   id:cUsername
${password_txbox}   id:cPassword
${LoginBtn}         xpath://button[@class="btn-login"]

${Quicklinks}       id:dropdownToggleWorksApp
${PandC}            id:aP&C Portal
${formslink}        id:lstForm
${ProdConfig}       id:btnProductConfigurator

${Addproductbtn}     xpath://span[contains(text(), 'Add Product')]
${Continuebtn}      xpath://span[contains(text(), 'Continue')]

${productnameinput}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-product-tab-component/div/form/div/div[1]/div/div/input


${policytypecodeinput}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-product-tab-component/div/form/div/div[4]/div/div/app-reusable-type-ahead-dropdown/input
${policytypecodeopn}        xpath:/html/body/div/div/div/div/mat-option[4]/span
${templatetypeinput}        xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-product-tab-component/div/form/div/div[7]/div/div/app-reusable-type-ahead-dropdown/input
${templatetypeopn}          xpath:/html/body/div/div/div/div/mat-option[2]/span
${productdescriptioninput}  xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-product-tab-component/div/form/div/div[9]/div/div/textarea
${editiondateinput}         id:mat-input-0
${lineofcoverage}           xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-product-tab-component/div/form/div/div[5]/div/div/app-reusable-type-ahead-dropdown/input
${lineofcoverageopn}        xpath:/html/body/div/div/div/div/mat-option[2]/span
${carrierspecific}          xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-product-tab-component/div/form/div/div[6]/div/div/app-reusable-type-ahead-dropdown/input
${carrierspecificopn}       xpath:/html/body/div/div/div/div/mat-option[3]/span

#program header
${addrowbtn}        xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-header-tab-component/div/app-re-usable-grid-for-all-tabs/div/button[1]
                          
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
${DT1opn}   xpath://span[contains(text(), ' Lookup ')]
${SOURopn}  xpath://span[contains(text(), ' Carrier List ')]
${FN2d}=    Non-admitted
${DT2opn}   xpath://span[contains(text(), 'Checkbox')]
${FN3d}=    Limit
${DT3opn}   xpath://span[contains(text(), ' Currency ')]
${FN4d}=    Total Premium
${DT4opn}   xpath://span[contains(text(), ' Currency ')]
${FN5d}=    Total Limit
${DT5opn}   xpath://span[contains(text(), ' Currency ')]
${FN6d}=    Auditable
${DT6opn}   xpath://span[contains(text(), 'Checkbox')]

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
${psDT16}       xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[16]/div[4]/app-ag-grid-item-dropdown/div/div/input
${psDT16opn}    xpath://span[contains(text(), ' Calculation ')]
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


${NewRules15}       xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[2]/div/span/app-ag-grid-item-lookup/div/div/input
${NewRules16}       xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[2]/div/span/app-ag-grid-item-lookup/div/div/input
${custruleopn}     xpath://span[contains(text(), ' Add Custom Rule ')]

#Common
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

#BUTTON
${CoverageLimits}   xpath://label[contains(text(), 'Coverage Limits')]
${Deductibles}      xpath://label[contains(text(), 'Deductibles')]
${Endorsements}     xpath://label[contains(text(), 'Endorsements')]
${AdditionalCoverageTerms}     xpath://label[contains(text(), 'Additional Coverage Terms')]
${RatingBasis}     xpath://label[contains(text(), 'Rating Basis')]
${Subjectivities}     xpath://label[contains(text(), 'Subjectivities')]
${PremiumTaxesFees}     xpath://label[contains(text(), 'Premium / Taxes / Fees')]

#COMMON ELEMENTS
${psaddrowbtn}      xpath://button[contains(text(), 'Add Row')]
${Ruletype}         xapth:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[2]/div/span/app-ag-grid-item-lookup/div/div/input
${psAddrul15}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[15]/div[5]/app-ag-grid-item-rules/div/button
${Addrowrule}      xpath://button[contains(text(), 'Add Row') and @class='o-button btn-add-row ng-star-inserted']
${psAddrul16}      xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-program-grid-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[16]/div[5]/app-ag-grid-item-rules/div/button

${psExp1}       xpath://span[contains(text(), ' Variable ')]
${psExp2}       xpath://span[contains(text(), ' Operator ')]
${psExp3}       xpath://span[contains(text(), ' Constant ')]
${saverule}     xpath://button[contains(text(), 'Save')]
${CLOSE}        xpath://mat-icon[contains(text(), 'close')]
${Finalizebtn}     xpath://span[contains(text(), 'Finalize')]
${Publish}      xpath://button[contains(text(), 'Publish')]
${productlistlink}      xpath://span[contains(text(), 'Product List ')]
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

#coveragetermheader
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

#CoverageTerm-Coveragelimit
${ctclFN1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[3]/app-ag-grid-custom-tooltip/span
${ctclFN2}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[3]/app-ag-grid-custom-tooltip/span
${ctclFN3}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[3]/app-ag-grid-custom-tooltip/span
${ctclFN4}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[3]/app-ag-grid-custom-tooltip/span
${ctclFN5}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[3]/app-ag-grid-custom-tooltip/span
${ctclFN6}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[6]/div[3]/app-ag-grid-custom-tooltip/span

${ctclDT1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[4]/app-ag-grid-item-dropdown/div/div/input
${ctclDT2}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[4]/app-ag-grid-item-dropdown/div/div/input
${ctclDT3}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[4]/app-ag-grid-item-dropdown/div/div/input
${ctclDT4}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[4]/app-ag-grid-item-dropdown/div/div/input
${ctclDT5}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[4]/app-ag-grid-item-dropdown/div/div/input
${ctclDT6}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[6]/div[4]/app-ag-grid-item-dropdown/div/div/input

${ctclSOUR1}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[5]/app-ag-grid-item-dropdown/div/div/input
${ctclSOUR2}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[5]/app-ag-grid-item-dropdown/div/div/input
${ctclSOUR4}    xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[5]/app-ag-grid-item-dropdown/div/div/input

#CoverageTerm-Coveragelimit Data
${ctclFN1d}=    Coverage
${ctclFN2d}=    Coverage Territory
${ctclFN3d}=    Amount
${ctclFN4d}=    Type
${ctclFN5d}=    Retroactive Date
${ctclFN6d}=    Notes

#CoverageTerm-Deductables
${ctdFN1}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[3]/app-ag-grid-custom-tooltip/span
${ctdFN2}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[3]/app-ag-grid-custom-tooltip/span
${ctdFN3}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[3]/app-ag-grid-custom-tooltip/span
${ctdFN4}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[3]/app-ag-grid-custom-tooltip/span
${ctdFN5}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[3]/app-ag-grid-custom-tooltip/span
${ctdFN6}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[6]/div[3]/app-ag-grid-custom-tooltip/span

${ctdDT1}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[4]/app-ag-grid-item-dropdown/div/div/input
${ctdDT2}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[4]/app-ag-grid-item-dropdown/div/div/input
${ctdDT3}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[4]/app-ag-grid-item-dropdown/div/div/input
${ctdDT4}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[4]/app-ag-grid-item-dropdown/div/div/input
${ctdDT5}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[4]/app-ag-grid-item-dropdown/div/div/input
${ctdDT6}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[6]/div[4]/app-ag-grid-item-dropdown/div/div/input

${ctdSOUR1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[5]/app-ag-grid-item-dropdown/div/div/input
${ctdSOUR2}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[5]/app-ag-grid-item-dropdown/div/div/input
${ctdSOUR4}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[5]/app-ag-grid-item-dropdown/div/div/input
${ctdSOUR5}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[5]/app-ag-grid-item-dropdown/div/div/input


#CoverageTerm-Deductables Data
${ctdFN1d}=    Coverage
${ctdFN2d}=    Coverage Territory
${ctdFN3d}=    Amount
${ctdFN4d}=    Retention Type
${ctdFN5d}=    Per Claim/Per Occurrence
${ctdFN6d}=    Notes

#Endorsements
${endFN1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[3]/app-ag-grid-custom-tooltip/span
${endFN2}     xpath://html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[3]/app-ag-grid-custom-tooltip/span
${endFN3}     xpath://html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[3]/app-ag-grid-custom-tooltip/span
${endFN4}     xpath://html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[3]/app-ag-grid-custom-tooltip/span
${endFN5}     xpath://html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[3]/app-ag-grid-custom-tooltip/span

${endDT1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[4]/app-ag-grid-item-dropdown/div/div/input
${endDT2}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[4]/app-ag-grid-item-dropdown/div/div/input
${endDT3}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[4]/app-ag-grid-item-dropdown/div/div/input
${endDT4}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[4]/app-ag-grid-item-dropdown/div/div/input
${endDT5}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[5]/div[4]/app-ag-grid-item-dropdown/div/div/input


${endSOUR1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[5]/app-ag-grid-item-dropdown/div/div/input
#Endorsements Data
${endFN1d}=     Endorsement
${endFN2d}=     Endorsement No
${endFN3d}=     Location(s)
${endFN4d}=     Attachment(s)
${endFN5d}=     Notes

#AdditionalCoverageTerms
${actFN1}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[3]/app-ag-grid-custom-tooltip/span
${actFN2}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[3]/app-ag-grid-custom-tooltip/span
${actFN3}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[3]/app-ag-grid-custom-tooltip/span

${actDT1}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[4]/app-ag-grid-item-dropdown/div/div/input
${actDT2}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[4]/app-ag-grid-item-dropdown/div/div/input
${actDT3}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[4]/app-ag-grid-item-dropdown/div/div/input

${actSOUR1}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[5]/app-ag-grid-item-dropdown/div/div/input
#AdditionalCoverageTerms Data
${actFN1d}=     Terms and Conditions
${actFN2d}=     Description
${actFN3d}=     Attachment(s)

#RatingBasis
${rbFN1}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[3]/app-ag-grid-custom-tooltip/span
${rbFN2}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[3]/app-ag-grid-custom-tooltip/span
${rbFN3}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[3]/app-ag-grid-custom-tooltip/span
${rbFN4}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[3]/app-ag-grid-custom-tooltip/span


${rbDT1}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[4]/app-ag-grid-item-dropdown/div/div/input
${rbDT2}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[4]/app-ag-grid-item-dropdown/div/div/input
${rbDT3}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[3]/div[4]/app-ag-grid-item-dropdown/div/div/input
${rbDT4}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[4]/app-ag-grid-item-dropdown/div/div/input


${rbSOUR1}   xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[5]/app-ag-grid-item-dropdown/div/div/input
${rb1Field1opn} 	xpath://span[contains(text(), ' rb_Exposure ')]
${rb1Field2opn} 	xpath://span[contains(text(), ' * Multipy ')]
${rb1Field3opn} 	xpath://span[contains(text(), ' rb_Rate ')]
${rbaddrulebtn4}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[4]/div[5]/app-ag-grid-item-rules/div/button
${rbNewRules4}	    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-rules-modal/div/div[2]/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[2]/div/span/app-ag-grid-item-lookup/div/div/input

#RatingBasis  Data
${rbFN1d}=      Description
${rbFN2d}=      Exposure
${rbFN3d}=      Rate
${rbFN4d}=      Premium

#Subjectivities
${subFN1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[3]/app-ag-grid-custom-tooltip/span
${subFN2}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[3]/app-ag-grid-custom-tooltip/span

${subDT1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[4]/app-ag-grid-item-dropdown/div/div/input
${subDT2}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[4]/app-ag-grid-item-dropdown/div/div/input
#Subjectivities Data
${subFN1d}=     Description
${subFN2d}=     Exposure

#PremiumTaxesFees
${ptfFN1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[3]/app-ag-grid-custom-tooltip/span
${ptfFN2}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[3]/app-ag-grid-custom-tooltip/span

${ptfDT1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[1]/div[4]/app-ag-grid-item-dropdown/div/div/input
${ptfDT2}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div[2]/div[4]/app-ag-grid-item-dropdown/div/div/input

${ptfSOUR1}     xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-coverage-terms-tab-component/div/app-re-usable-grid-for-all-tabs/ag-grid-angular/div/div[2]/div[2]/div[3]/div[2]/div/div/div/div[5]/app-ag-grid-item-dropdown/div/div/input

#PremiumTaxesFees Data
${ptfFN1d}=     Type
${ptfFN2d}=     Amount


*** test cases ***
R1 Test
    LoginPage
    SelectPandC
    Addproduct
    Programheader
    Programstructure
    Coveragetermheader
    Coverageterms
    Deductibles
    Endorsements
    AdditionalCoverageTerms
    RatingBasis
    Subjectivities
    PremiumTaxesFees
    #checkpublish
    [Teardown]    Close Browser

*** keywords ***
LoginPage
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible  ${username_txbox}  10
    Wait Until Element Is Visible  ${password_txbox}  10
    Input Text    ${username_txbox}    ${username}
    Input Text    ${password_txbox}    ${password}
    Click Button    ${LoginBtn}
    sleep  2
    log to console   Login_Page_Completed

SelectPandC
    Title Should Be    Woodruff - Workbench
    Wait Until Element Is Visible  ${Quicklinks}  10
    Click Element   ${Quicklinks}
    Wait Until Element Is Visible  ${PandC}  20
    Click Element   ${PandC}
    sleep   25
    Switch Window   Property And Casualty
    sleep   5
    Wait Until Element Is Visible   ${formslink}  20
    Wait Until Element Is Enabled   ${formslink}
    Click Element   ${formslink}
    sleep   5
    Wait Until Element Is Visible  ${ProdConfig}  40
    Wait Until Element Is Enabled  ${ProdConfig}
    Click Element   ${ProdConfig}
    Sleep    15
    log to console   Select_PandC_Completed
Addproduct
#    Wait Until Element Is Visible  ${Addproductbtn}  15
    Click Element  ${Addproductbtn}
    Wait Until Element Is Visible   ${productnameinput}     15
    Wait Until Element Is Enabled   ${productnameinput}     5
    Input Text    ${productnameinput}   Product Liability0105
    Input Text    ${editiondateinput}    1/31/2023
    Sleep    2
    Wait Until Element Is Visible   ${policytypecodeinput}  20
    Wait Until Element Is Enabled   ${policytypecodeinput}
    Click Element    ${policytypecodeinput}
    Click Element    ${policytypecodeopn}
    Sleep    2
    Wait Until Element Is Visible   ${carrierspecific}  20
    Wait Until Element Is Enabled   ${carrierspecific}
    Click Element    ${carrierspecific}
    Click Element   ${carrierspecificopn}
    Sleep    1
    Wait Until Element Is Visible   ${templatetypeinput}  20
    Wait Until Element Is Enabled   ${templatetypeinput}
    Click Element   ${templatetypeinput}
    Click Element   ${templatetypeopn}
    Sleep    1
    Input Text    ${productdescriptioninput}   "Infringement of IP, other than Patent, Personal and Advertising Injury (often excluded in GL), Unauthorized access, Transmission of Virus or Malicious Code, Cyber Extortion, PII/PHI data being exposed to 3rd parties."
    Click Element    ${Continuebtn}
    sleep   5
    log to console   AddProduct_Completed

programheader
    Click Button    ${addrowbtn}
    sleep   1
    Click Element   ${FN1}
    Press Keys  ${FN1}  ${FN1d}
    sleep   1
    Click Element   ${DT1}
    sleep   1
    Click Element   ${DT1opn}
    Sleep    2
    Click Element   ${SOUR}
    sleep   1
    Click Element   ${SOURopn}
    sleep   2
    Click Button    ${addrowbtn}
    sleep   1
    Click Element   ${FN1}
    sleep   1
    Press Keys  ${FN1}  ${FN2d}
    sleep   1
    Click Element   ${DT2}
    sleep   1
    Click Element   ${DT2opn}
    sleep   4
    Click Button    ${addrowbtn}
    sleep   1
    Click Element   ${FN1}
    sleep   1
    Press Keys  ${FN1}  ${FN3d}
    sleep   1
    Click Element   ${DT3}
    sleep   1
    Click Element   ${DT3opn}
    sleep   4
    Click Button    ${addrowbtn}
    sleep   1
    Click Element   ${FN1}
    sleep   1
    Press Keys  ${FN1}  ${FN4d}
    sleep   1
    Click Element   ${DT4}
    sleep   1
    Click Element   ${DT4opn}
    sleep   4
    Click Button    ${addrowbtn}
    sleep   1
    Click Element   ${FN1}
    sleep   1
    Press Keys  ${FN1}  ${FN5d}
    sleep   1
    Click Element   ${DT5}
    sleep   1
    Click Element   ${DT5opn}
    sleep   4
    Click Button    ${addrowbtn}
    sleep   1
    Click Element   ${FN1}
    sleep   1
    Press Keys  ${FN1}  ${FN6d}
    sleep   1
    Click Element   ${DT6}
    sleep   1
    Click Element   ${DT6opn}
    sleep   4
    Click Element    ${Continuebtn}
    Sleep    15
    log to console   Programheader_Completed
    

#    Press Keys  none    TAB
#    Press Keys  none    SPACE
#   log to console ${googlesite}
Programstructure
    #ROW1
    Click Button    ${psaddrowbtn}
    sleep   1
    Click Element   ${psFN1}
    Press Keys  ${psFN1}  ${psFN1d}
    sleep   1
    Click Element   ${psDT1}
    sleep   1
    Click Element   ${psDT1opn}
    Sleep    2
    #ROW2
    Click Button    ${psaddrowbtn}
    sleep   1
    Click Element   ${psFN2}
    Press Keys  ${psFN2}  ${psFN2d}
    sleep   1
    Click Element   ${psDT2}
    #sleep   1
    Wait Until Page Contains Element    ${psDT2opn}     10
    Click Element   ${psDT2opn}
    Wait Until Page Contains Element    ${psSOUR2}      10
    Click Element   ${psSOUR2}
    Wait Until Page Contains Element    ${psSOUR2opn}   10
    Click Element   ${psSOUR2opn}
    sleep   2
    #ROW3
    Click Button    ${psaddrowbtn}
    #sleep   1
    Wait Until Page Contains Element    ${psFN3}        10
    Click Element   ${psFN3}
    Press Keys  ${psFN3}  ${psFN3d}
    sleep   1
    Click Element   ${psDT3}
    #sleep   1
    Wait Until Page Contains Element    ${psSOUR2}      10
    Click Element   ${psDT3opn}
    Sleep    2
    #ROW4
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${psFN4}        10
    Click Element   ${psFN4}
    Press Keys  ${psFN4}  ${psFN4d}
    #sleep   1
    Wait Until Page Contains Element    ${psDT4}        10
    Click Element   ${psDT4}
    #sleep   1
    Wait Until Page Contains Element    ${psDT4opn}     10
    Click Element   ${psDT4opn}
    #Sleep    2
    Wait Until Page Contains Element    ${psSOUR4}      10
    Click Element   ${psSOUR4}
    sleep   1
    Press Keys  ${psSOUR4}    ${psSOUR4d}
    sleep   5
    #ROW5--------------------------------------------------------
    Click Button    ${psaddrowbtn}
    Sleep    2
    Click Button    ${psaddrowbtn}
    #Wait Until Page Contains Element    ${psFN5}        10
    Set Focus To Element    ${psFN5}
    Sleep    2
    Click Element   ${psFN5}
    Press Keys  ${psFN5}  ${psFN5d}
    Sleep    2
    Wait Until Page Contains Element    ${psDT5}        10
    Click Element   ${psDT5}
    Wait Until Page Contains Element    ${psDT5opn}     10
    Click Element   ${psDT5opn}
    Sleep    5
    Wait Until Page Contains Element    ${psSOUR5}      10
    Click Element   ${psSOUR5}
    #sleep   1
    Wait Until Page Contains Element    ${psSOUR5opn}   10
    Click Element  ${psSOUR5opn}
    sleep   2
    #ROW6-----------------------------------------------------
    Click Button    ${psaddrowbtn}
    #sleep   1
    Wait Until Page Contains Element    ${psFN6}        10
    Click Element   ${psFN6}
    Wait Until Element Is Enabled    ${psFN5}
    Press Keys  ${psFN6}  ${psFN6d}
    #sleep   1
    Wait Until Page Contains Element    ${psDT6}        10
    Click Element   ${psDT6}
    #sleep   1
    Wait Until Page Contains Element    ${psDT6opn}     10
    Click Element   ${psDT6opn}
    sleep   2
    #ROW7------------------------------------------------------
    Click Button    ${psaddrowbtn}
    sleep   1
    Click Button    ${psaddrowbtn}
    Click Element   ${psFN7}
    Press Keys  ${psFN7}  ${psFN7d}
    sleep   1
    Click Element   ${psDT7}
    sleep   1
    Click Element   ${psDT7opn}
    Sleep    2
    Click Element   ${psSOUR7}
    sleep   1
    Press Keys  ${psSOUR7}    ${psSOUR7d}
    sleep   3
    #ROW8
    Click Button    ${psaddrowbtn}
    sleep   2
    Click Button    ${psaddrowbtn}
    Sleep    1
    Click Element   ${psFN8}
    Press Keys  ${psFN8}  ${psFN8d}
    sleep   1
    Click Element   ${psDT8}
    sleep   1
    Click Element   ${psDT8opn}
    Sleep    2
    #ROW9
    Click Button    ${psaddrowbtn}
    sleep   1
    Click Element   ${psFN9}
    Press Keys  ${psFN9}  ${psFN9d}
    sleep   1
    Click Element   ${psDT9}
    sleep   1
    Click Element   ${psDT9opn}
    Sleep    2
    #ROW10
    Click Button    ${psaddrowbtn}
    sleep   1
    Click Element   ${psFN10}
    Press Keys  ${psFN10}  ${psFN10d}
    sleep   1
    Click Element   ${psDT10}
    sleep   1
    Click Element   ${psDT10opn}
    Sleep    2
    #ROW11
    Click Button    ${psaddrowbtn}
    sleep   1
    Click Element   ${psFN11}
    Press Keys  ${psFN11}  ${psFN11d}
    sleep   1
    Click Element   ${psDT11}
    sleep   1
    Click Element   ${psDT11opn}
    Sleep    2
    #ROW12
    Click Button    ${psaddrowbtn}
    sleep   1
    Click Element   ${psFN12}
    Press Keys  ${psFN12}  ${psFN12d}
    sleep   1
    Click Element   ${psDT12}
    sleep   1
    Click Element   ${psDT12opn}
    Sleep    2
    #ROW13
    Click Button    ${psaddrowbtn}
    sleep   1
    Click Element   ${psFN13}
    Press Keys  ${psFN13}  ${psFN13d}
    sleep   1
    Click Element   ${psDT13}
    sleep   1
    Click Element   ${psDT13opn}
    Sleep    2
    #ROW14
    Click Button    ${psaddrowbtn}
    sleep   1
    Click Element   ${psFN14}
    Press Keys  ${psFN14}  ${psFN14d}
    sleep   1
    Click Element   ${psDT14}
    sleep   1
    Click Element   ${psDT14opn}
    Sleep    2
    #ROW15
    Click Button    ${psaddrowbtn}
    sleep   1
    Click Element   ${psFN15}
    Press Keys  ${psFN15}  ${psFN15d}
    sleep   1
    Click Element   ${psDT15}
    sleep   1
    Click Element   ${psDT15opn}
    Sleep    2
    Click Element   ${psAddrul15}
    Wait Until Page Contains Element    ${Addrowrule}        10
    Click Element   ${Addrowrule}
    log to console  AddRowRule
    Wait Until Page Contains Element    ${NewRules15}        10
    Click Element   ${NewRules15}
    log to console  PLEASESELECT
    Wait Until Page Contains Element    ${custruleopn}        10
    Click Element   ${custruleopn}
    log to console  CUSTOMEOPN_CLICKED
    Sleep    2
    Click Element   ${Addrowrule}
    Click Element   ${type1}
    Click Element   ${psExp1}
    Click Element   ${Field1}
    Click Element   ${15Field1opn}
    log to console  Row1_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type2}
    Click Element   ${psExp2}
    Click Element   ${Field2}
    Click Element   ${15Field2opn}
    log to console  Row2_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type3}
    Click Element   ${psExp1}
    Click Element   ${Field3}
    Click Element   ${15Field3opn}
    log to console  Row3_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type4}
    Click Element   ${psExp2}
    Click Element   ${Field4}
    Click Element   ${15Field4opn}
    log to console  Row4_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type5}
    Click Element   ${psExp3}
    Click Element   ${Field5}
    Press Keys      ${Field5}   ${15Field5opn}
    log to console  Row5_completed
    Sleep    2
    Click Element    ${saverule}
    Sleep    3
    Click Element    ${CLOSE}
    Sleep    2

    #ROW16
    Click Button    ${psaddrowbtn}
    sleep   1
    Click Element   ${psFN16}
    Press Keys  ${psFN16}  ${psFN16d}
    sleep   1
    Click Element   ${psDT16}
    sleep   1
    Click Element   ${psDT16opn}
    Sleep    2
    Click Element   ${psAddrul16}
    Wait Until Page Contains Element    ${Addrowrule}        10
    Click Element   ${Addrowrule}
    log to console  AddRowRule
    Wait Until Page Contains Element    ${NewRules16}        10
    Click Element   ${NewRules16}
    log to console  PLEASESELECT
    Wait Until Page Contains Element    ${custruleopn}        10
    Click Element   ${custruleopn}
    log to console  CUSTOMEOPN_CLICKED
    Sleep    2
    Click Element   ${Addrowrule}
    Click Element   ${type1}
    Click Element   ${psExp1}
    Click Element   ${Field1}
    Click Element   ${16Field1opn}
    log to console  Row1_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type2}
    Click Element   ${psExp2}
    Click Element   ${Field2}
    Click Element   ${16Field2opn}
    log to console  Row2_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type3}
    Click Element   ${psExp1}
    Click Element   ${Field3}
    Click Element   ${16Field3opn}
    log to console  Row3_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type4}
    Click Element   ${psExp2}
    Click Element   ${Field4}
    Click Element   ${16Field4opn}
    log to console  Row4_completed
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type5}
    Click Element   ${psExp3}
    Click Element   ${Field5}
    Press Keys      ${Field5}   ${16Field5opn}
    log to console  Row5_completed
    Sleep    5
    Click Element    ${saverule}
    Sleep    2
    Click Element    ${CLOSE}
    Sleep    2

    #ROW17
    Click Button    ${psaddrowbtn}
    sleep   1
    Click Element   ${psFN17}
    Press Keys  ${psFN17}  ${psFN17d}
    sleep   1
    Click Element   ${psDT17}
    sleep   1
    Click Element   ${DTopnATT}
    Sleep    2
    Click Element    ${Continuebtn}
    Sleep    4
    log to console   ProgramStructure_Completed
Coveragetermheader
    #ROW1
    Click Button    ${psaddrowbtn}
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
    #ROW2
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${cthFN2}     10
    Click Element   ${cthFN2}
    Press Keys      ${cthFN2}  ${cthFN2d}
    Wait Until Page Contains Element    ${cthDT2}     10
    Click Element   ${cthDT2}
    sleep   2
    Click Element   ${DTopnCBX}
    Sleep    2
    #ROW3
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${cthFN3}     10
    Click Element   ${cthFN3}
    Press Keys      ${cthFN3}  ${cthFN3d}
    Wait Until Page Contains Element    ${cthDT3}     10
    Click Element   ${cthDT3}
    Sleep    2
    Click Element   ${DTopnCUR}
    Sleep    2
    #ROW4
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${cthFN4}     10
    Click Element   ${cthFN4}
    Press Keys      ${cthFN4}  ${cthFN4d}
    Wait Until Page Contains Element    ${cthDT4}     10
    Click Element   ${cthDT4}
    Sleep    2
    Click Element   ${DTopnCUR}
    Sleep    2
    #ROW5
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${cthFN5}     10
    Click Element   ${cthFN5}
    Press Keys      ${cthFN5}  ${cthFN5d}
    Wait Until Page Contains Element    ${cthDT5}     10
    Click Element   ${cthDT5}
    Sleep    2
    Click Element   ${DTopnCUR}
    Sleep    2
    #ROW6
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${cthFN6}     10
    Click Element   ${cthFN6}
    Press Keys      ${cthFN6}  ${cthFN6d}
    Wait Until Page Contains Element    ${cthDT6}     10
    Click Element   ${cthDT6}
    Sleep    2
    Click Element   ${DTopnCBX}
    Sleep    2
    Click Element    ${Continuebtn}
    Sleep    10
    log to console   CoveragetermHader_Completed

Coverageterms

    #Coveragelimit
    #ROW1
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${ctclFN1}     10
    Click Element   ${ctclFN1}
    Press Keys      ${ctclFN1}  ${ctclFN1d}
    Click Element   ${ctclDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ctclSOUR1}     10
    Click Element   ${ctclSOUR1}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    #ROW2
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${ctclFN2}     10
    Click Element   ${ctclFN2}
    Press Keys      ${ctclFN2}  ${ctclFN2d}
    Click Element   ${ctclDT2}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ctclSOUR1}     10
    Click Element   ${ctclSOUR2}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    #ROW3
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${ctclFN3}     10
    Click Element   ${ctclFN3}
    Press Keys      ${ctclFN3}  ${ctclFN3d}
    Click Element   ${ctclDT3}
    Wait Until Page Contains Element    ${DTopnCUR}     10
    Click Element   ${DTopnCUR}
    Sleep    2
    #ROW4
    Click Button    ${psaddrowbtn}
    #Wait Until Page Contains Element    ${ctclFN4}     10
    Click Element   ${ctclFN4}
    Press Keys      ${ctclFN4}  ${ctclFN4d}
    Sleep    2
    Click Element   ${ctclDT4}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Sleep    2
    Click Element   ${ctclSOUR4}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    3
    #ROW5
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${ctclFN5}     10
    Click Element   ${ctclFN5}
    Press Keys      ${ctclFN5}  ${ctclFN5d}
    Click Element   ${ctclDT5}
    Wait Until Page Contains Element    ${DTopnDAT}     10
    Click Element   ${DTopnDAT}
    Sleep    2
    #ROW6
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${ctclFN6}     10
    Click Element   ${ctclFN6}
    Press Keys      ${ctclFN6}  ${ctclFN6d}
    Click Element   ${ctclDT6}
    Wait Until Page Contains Element    ${DTopnTXT}     10
    Click Element   ${DTopnTXT}
    Sleep    2
    log to console   CoverageHeader_Completed
Deductibles
    Click Element    ${Deductibles}
    Sleep    3
    #ROW1
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${ctdFN1}     10
    Click Element   ${ctdFN1}
    Press Keys      ${ctdFN1}  ${ctdFN1d}
    Click Element   ${ctdDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ctdSOUR1}     10
    Click Element   ${ctdSOUR1}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    #ROW2
    Click Button    ${psaddrowbtn}
    #Wait Until Page Contains Element    ${ctdFN2}     15
    Sleep    2
    Click Element   ${ctdFN2}
    Press Keys      ${ctdFN2}  ${ctdFN2d}
    Log To Console    fieldname_input_done
    Sleep    2
    Click Element   ${ctdDT2}
    #Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Log To Console    Datatype_input_done
    #Wait Until Page Contains Element    ${ctdSOUR2}     10
    Click Element   ${ctdSOUR2}
    #Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    #ROW3
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${ctdFN3}     10
    Click Element   ${ctdFN3}
    Press Keys      ${ctdFN3}  ${ctdFN3d}
    Click Element   ${ctdDT3}
    Wait Until Page Contains Element    ${DTopnCUR}     10
    Click Element   ${DTopnCUR}
    Sleep    2
    #ROW4
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${ctdFN4}     10
    Click Element   ${ctdFN4}
    Press Keys      ${ctdFN4}  ${ctdFN4d}
    Click Element   ${ctdDT4}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ctdSOUR4}     10
    Click Element   ${ctdSOUR4}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    #ROW5
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${ctdFN5}     10
    Click Element   ${ctdFN5}
    Press Keys      ${ctdFN5}  ${ctdFN5d}
    Click Element   ${ctdDT5}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ctdSOUR5}     10
    Click Element   ${ctdSOUR5}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    #ROW6
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${ctdFN6}     10
    Click Element   ${ctdFN6}
    Press Keys      ${ctdFN6}  ${ctdFN6d}
    Click Element   ${ctdDT6}
    Wait Until Page Contains Element    ${DTopnTXT}     10
    Click Element   ${DTopnTXT}
    Sleep    2
    log to console   Decuctables_Completed

Endorsements
    Click Element    ${Endorsements}
    Sleep    3
    #ROW1
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${endFN1}     10
    Click Element   ${endFN1}
    Press Keys      ${endFN1}  ${endFN1d}
    Click Element   ${endDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${endSOUR1}     10
    Click Element   ${endSOUR1}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    #ROW2
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${endFN2}     10
    Click Element   ${endFN2}
    Press Keys      ${endFN2}  ${endFN2d}
    Click Element   ${endDT2}
    Wait Until Page Contains Element    ${DTopnTXT}     10
    Click Element   ${DTopnTXT}
    Sleep    2
    #ROW3
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${endFN3}     10
    Click Element   ${endFN3}
    Press Keys      ${endFN3}  ${endFN3d}
    Click Element   ${endDT3}
    Wait Until Page Contains Element    ${DTopnLOC}     10
    Click Element   ${DTopnLOC}
    Sleep    2
    #ROW4
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${endFN4}     10
    Click Element   ${endFN4}
    Press Keys      ${endFN4}  ${endFN4d}
    Click Element   ${endDT4}
    Wait Until Page Contains Element    ${DTopnATT}     10
    Click Element   ${DTopnATT}
    Sleep    2
    #ROW5
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${endFN5}     10
    Click Element   ${endFN5}
    Press Keys      ${endFN5}  ${endFN5d}
    Click Element   ${endDT5}
    Wait Until Page Contains Element    ${DTopnTXT}     10
    Click Element   ${DTopnTXT}
    Sleep    2
    log to console   Endorsements_Completed
AdditionalCoverageTerms
    Click Element    ${AdditionalCoverageTerms}
    Sleep    3
    #ROW1
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${actFN1}     10
    Click Element   ${actFN1}
    Press Keys      ${actFN1}  ${actFN1d}
    Click Element   ${actDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${actSOUR1}     10
    Click Element   ${actSOUR1}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    #ROW2
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${actFN2}     10
    Click Element   ${actFN2}
    Press Keys      ${actFN2}  ${actFN2d}
    Click Element   ${actDT2}
    Wait Until Page Contains Element    ${DTopnTXT}     10
    Click Element   ${DTopnTXT}
    Sleep    2
    #ROW3
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${actFN3}     10
    Click Element   ${actFN3}
    Press Keys      ${actFN3}  ${actFN3d}
    Click Element   ${actDT3}
    Wait Until Page Contains Element    ${DTopnATT}     10
    Click Element   ${DTopnATT}
    Sleep    2
RatingBasis
    Click Element    ${RatingBasis}
    Sleep    3
    #ROW1
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${rbFN1}     10
    Click Element   ${rbFN1}
    Press Keys      ${rbFN1}  ${rbFN1d}
    Click Element   ${rbDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${rbSOUR1}     10
    Click Element   ${rbSOUR1}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    #ROW2
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${rbFN2}     10
    Click Element   ${rbFN2}
    Press Keys      ${rbFN2}  ${rbFN2d}
    Click Element   ${rbDT2}
    Wait Until Page Contains Element    ${DTopnNUM}     10
    Click Element   ${DTopnNUM}
    Sleep    2
    #ROW3
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${rbFN3}     10
    Click Element   ${rbFN3}
    Press Keys      ${rbFN3}  ${rbFN3d}
    Click Element   ${rbDT3}
    Wait Until Page Contains Element    ${DTopnCUR}     10
    Click Element   ${DTopnCUR}
    Sleep    2
    #ROW4
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${rbFN4}     10
    Click Element   ${rbFN4}
    Press Keys      ${rbFN4}  ${rbFN4d}
    Click Element   ${rbDT4}
    Wait Until Page Contains Element    ${DTopnCAL}     10
    Click Element   ${DTopnCAL}
    Wait Until Page Contains Element    ${rbaddrulebtn4}     10
    Click Element    ${rbaddrulebtn4}
    Wait Until Page Contains Element    ${Addrowrule}        10
    Click Element   ${Addrowrule}
    log to console  AddRowRule
    Wait Until Page Contains Element    ${rbNewRules4}        10
    Click Element   ${rbNewRules4}
    log to console  PLEASESELECT
    Wait Until Page Contains Element    ${custruleopn}        10
    Click Element   ${custruleopn}
    log to console  CUSTOMEOPN_CLICKED
    Sleep    2
    Click Element   ${Addrowrule}
    Click Element   ${type1}
    Click Element   ${psExp1}
    Click Element   ${Field1}
    Click Element   ${rb1Field1opn}
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type2}
    Click Element   ${psExp2}
    Click Element   ${Field2}
    Click Element   ${rb1Field2opn}
    sleep   2
    Click Element   ${Addrowrule}
    Click Element   ${type3}
    Click Element   ${psExp1}
    Click Element   ${Field3}
    Click Element   ${rb1Field3opn}
    sleep   2
    Click Element    ${saverule}
    Sleep    3
    Click Element    ${CLOSE}
    Sleep    2
Subjectivities
    Click Element    ${Subjectivities}
    Sleep    3
    #ROW1
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${subFN1}     10
    Click Element   ${subFN1}
    Press Keys      ${subFN1}  ${subFN1d}
    Click Element   ${subDT1}
    Wait Until Page Contains Element    ${DTopnTXT}     10
    Click Element   ${DTopnTXT}
    Sleep    2
    #ROW2
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${subFN2}     10
    Click Element   ${subFN2}
    Press Keys      ${subFN2}  ${subFN2d}
    Click Element   ${subDT2}
    Wait Until Page Contains Element    ${DTopnATT}     10
    Click Element   ${DTopnATT}
    Sleep    2
PremiumTaxesFees
    Click Element    ${PremiumTaxesFees}
    Sleep    3
    #ROW1
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${ptfFN1}     10
    Click Element   ${ptfFN1}
    Press Keys      ${ptfFN1}  ${ptfFN1d}
    Click Element   ${ptfDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ptfSOUR1}     10
    Click Element   ${ptfSOUR1}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    #ROW2
    Click Button    ${psaddrowbtn}
    Wait Until Page Contains Element    ${ptfFN2}     10
    Click Element   ${ptfFN2}
    Press Keys      ${ptfFN2}  ${ptfFN2d}
    Click Element   ${ptfDT2}
    Wait Until Page Contains Element    ${DTopnCUR}     10
    Click Element   ${DTopnCUR}
    Sleep    5
    Click Element    ${Finalizebtn}
    Sleep    4
    Wait Until Page Contains Element    ${Publish}
    Click Element    ${Publish}
    Sleep    10
    #Wait    ${Publish}
checkpublish
    Click Element    ${productlistlink}
    Wait Until Page Contains Element    ${Product1}     10
    Click Element    ${Product1}
    Wait Until Page Contains Element    ${Finalizebtn}  10
    Get Element Attribute    ${Finalizebtn}   disabled
    ${Status}=     Run Keyword And Return Status    Element Should Be Disabled    ${Publish}
    Run Keyword If    '${Status}'=='True'      Log To Console    Test Case PASSED


#HELP
#  Wait For Condition    Element States     ${Publish}    contains    disabled    5


