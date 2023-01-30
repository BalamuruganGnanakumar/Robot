*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     String
Resource    ../../TestScripts/Pages/Common.robot
*** Variables ***
${Addproductbtn}            xpath://a[@class='o-button btn-add-new-prod' and @role='button']
${productnameinput}         xpath:/html/body/app-root/div/div/app-add-or-edit-product/div/div[2]/div[2]/app-product-tab-component/div/form/div/div[1]/div/div/input
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
*** Keywords ***
ProductForm
    log to console   AddProduct_Started
    Sleep    15
    Wait Until Element Is Visible   ${Addproductbtn}  20
    Click Element  ${Addproductbtn}
    log to console   Addproductbtn_clicked
    Sleep    3
    ${PRODUCT_NO}=  generate random string  5  [NUMBERS]
    Wait Until Element Is Visible   ${productnameinput}  10
    Input Text    ${productnameinput}   Product Liability ${PRODUCT_NO}
    Wait Until Element Is Visible   ${editiondateinput}  10
    Input Text    ${editiondateinput}    2/31/2023
    Sleep    5
    Wait Until Element Is Visible   ${policytypecodeinput}  20
    Wait Until Element Is Enabled   ${policytypecodeinput}
    Click Element    ${policytypecodeinput}
    Click Element    ${policytypecodeopn}
    Wait For Condition	return document.readyState == "complete"
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
    Take Screenshot
    Click Element    ${Continuebtn}
    Wait Until Element Is Enabled    ${addrowbtn}     9
    log to console   AddProduct_Completed