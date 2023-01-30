*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Resource    ../../TestScripts/Pages/Common.robot
*** Variables ***
#BUTTON
${CoverageLimits}   xpath://label[contains(text(), 'Coverage Limits')]
${Deductibles}      xpath://label[contains(text(), 'Deductibles')]
${Endorsements}     xpath://label[contains(text(), 'Endorsements')]
${AdditionalCoverageTerms}     xpath://label[contains(text(), 'Additional Coverage Terms')]
${RatingBasis}     xpath://label[contains(text(), 'Rating Basis')]
${Subjectivities}     xpath://label[contains(text(), 'Subjectivities')]
${PremiumTaxesFees}     xpath://label[contains(text(), 'Premium / Taxes / Fees')]
${ctcladdrowbtn}      xpath://button[contains(text(), 'Add Row') and @class='o-button btn-add-row']
${custruleopn}     xpath://span[contains(text(), ' Add Custom Rule ')]
${Addrowrule}      xpath://button[contains(text(), 'Add Row') and @class='o-button btn-add-row ng-star-inserted']

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


*** Keywords ***
CT-Coveragelimit
    Log To Console    CT-Coveragelimit_Started
    Take Screenshot
    #ROW1--------------------------------------------------
    Wait Until Page Contains Element    ${ctcladdrowbtn}   20
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ctclFN1}     10
    Click Element   ${ctclFN1}
    Press Keys      ${ctclFN1}  ${ctclFN1d}
    Wait Until Page Contains Element    ${ctclDT1}     10
    Click Element   ${ctclDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ctclSOUR1}     10
    Click Element   ${ctclSOUR1}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    Log To Console    CT-Coverage Limit Row1 Created
    #ROW2--------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ctclFN2}     10
    Click Element   ${ctclFN2}
    Press Keys      ${ctclFN2}  ${ctclFN2d}
    Click Element   ${ctclDT2}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ctclSOUR1}    10
    Click Element   ${ctclSOUR2}
    Wait Until Page Contains Element    ${SOURopnCTL}   10
    Click Element   ${SOURopnCTL}
    Sleep    2
    Log To Console    CT-Coverage Limit Row2 Created
    #ROW3---------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ctclFN3}     10
    Click Element   ${ctclFN3}
    Press Keys      ${ctclFN3}  ${ctclFN3d}
    Wait Until Page Contains Element    ${ctclDT3}     10
    Click Element   ${ctclDT3}
    Wait Until Page Contains Element    ${DTopnCUR}     10
    Click Element   ${DTopnCUR}
    Sleep    2
    Log To Console    CT-Coverage Limit Row3 Created
    #ROW4---------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ctclFN4}     10
    Click Element   ${ctclFN4}
    Press Keys      ${ctclFN4}  ${ctclFN4d}
    Wait Until Page Contains Element    ${ctclDT4}     10
    Click Element   ${ctclDT4}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Sleep    2
    Click Element   ${ctclSOUR4}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    3
    Log To Console    CT-Coverage Limit Row4 Created
    #ROW5----------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ctclFN5}     10
    Click Element   ${ctclFN5}
    Press Keys      ${ctclFN5}  ${ctclFN5d}
    Wait Until Page Contains Element    ${ctclDT5}     10
    Click Element   ${ctclDT5}
    Wait Until Page Contains Element    ${DTopnDAT}     10
    Click Element   ${DTopnDAT}
    Sleep    2
    Take Screenshot
    Log To Console    CT-Coverage Limit Row5 Created
    #ROW6----------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ctclFN6}     10
    Click Element   ${ctclFN6}
    Press Keys      ${ctclFN6}  ${ctclFN6d}
    Wait Until Page Contains Element    ${ctclDT6}     10
    Click Element   ${ctclDT6}
    Wait Until Page Contains Element    ${DTopnTXT}     10
    Click Element   ${DTopnTXT}
    Sleep    2
    Log To Console    CT-Coveragelimit_Completed
CT-Deductibles
    Click Element    ${Deductibles}
    Log To Console    CT-Deductibles_Started
    Sleep    3
    Take Screenshot
    #ROW1----------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ctdFN1}     10
    Click Element   ${ctdFN1}
    Press Keys      ${ctdFN1}  ${ctdFN1d}
    Wait Until Page Contains Element    ${ctdDT1}     10
    Click Element   ${ctdDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ctdSOUR1}     10
    Click Element   ${ctdSOUR1}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    Log To Console    CT-Deductibles Row1 Created
    #ROW2-----------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    #Wait Until Page Contains Element    ${ctdFN2}     15
    Sleep    2
    Click Element   ${ctdFN2}
    Press Keys      ${ctdFN2}  ${ctdFN2d}
    Wait Until Page Contains Element    ${ctdDT2}       10
    Click Element   ${ctdDT2}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ctdSOUR2}     10
    Click Element   ${ctdSOUR2}
    Wait Until Page Contains Element    ${SOURopnCTL}   10
    Click Element   ${SOURopnCTL}
    Sleep    2
    Log To Console    CT-Deductibles Row2 Created
    #ROW3----------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ctdFN3}     10
    Click Element   ${ctdFN3}
    Press Keys      ${ctdFN3}  ${ctdFN3d}
    Wait Until Page Contains Element    ${ctdDT3}     10
    Click Element   ${ctdDT3}
    Wait Until Page Contains Element    ${DTopnCUR}     10
    Click Element   ${DTopnCUR}
    Sleep    2
    Log To Console    CT-Deductibles Row3 Created
    #ROW4---------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ctdFN4}     10
    Click Element   ${ctdFN4}
    Press Keys      ${ctdFN4}  ${ctdFN4d}
    Wait Until Page Contains Element    ${ctdDT4}     10
    Click Element   ${ctdDT4}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ctdSOUR4}     10
    Click Element   ${ctdSOUR4}
    Wait Until Page Contains Element    ${SOURopnCTL}   10
    Click Element   ${SOURopnCTL}
    Sleep    2
    Log To Console    CT-Deductibles Row4 Created
    #ROW5---------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ctdFN5}     10
    Click Element   ${ctdFN5}
    Press Keys      ${ctdFN5}  ${ctdFN5d}
    Wait Until Page Contains Element    ${ctdDT5}     10
    Click Element   ${ctdDT5}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ctdSOUR5}     10
    Click Element   ${ctdSOUR5}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    Log To Console    CT-Deductibles Row5 Created
    #ROW6-----------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ctdFN6}     10
    Click Element   ${ctdFN6}
    Press Keys      ${ctdFN6}  ${ctdFN6d}
    Wait Until Page Contains Element    ${ctdDT6}     10
    Click Element   ${ctdDT6}
    Wait Until Page Contains Element    ${DTopnTXT}     10
    Click Element   ${DTopnTXT}
    Sleep    2
    Take Screenshot
    Log To Console    CT-Deductibles Row6 Created
    Log To Console    CT-Deductibles_Completed
CT-Endorsements
    Click Element    ${Endorsements}
    Log To Console    CT-Endorsements_Started
    Sleep    3
    Take Screenshot
    #ROW1
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${endFN1}     10
    Click Element   ${endFN1}
    Press Keys      ${endFN1}  ${endFN1d}
    Wait Until Page Contains Element    ${endDT1}     10
    Click Element   ${endDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${endSOUR1}     10
    Click Element   ${endSOUR1}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    Log To Console    CT-Endorsements Row1 Created
    #ROW2---------------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${endFN2}     10
    Click Element   ${endFN2}
    Press Keys      ${endFN2}  ${endFN2d}
    Wait Until Page Contains Element    ${endDT2}     10
    Click Element   ${endDT2}
    Wait Until Page Contains Element    ${DTopnTXT}     10
    Click Element   ${DTopnTXT}
    Sleep    2
    Log To Console    CT-Endorsements Row2 Created
    #ROW3------------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${endFN3}     10
    Click Element   ${endFN3}
    Press Keys      ${endFN3}  ${endFN3d}
    Click Element   ${endDT3}
    Wait Until Page Contains Element    ${DTopnLOC}     10
    Click Element   ${DTopnLOC}
    Sleep    2
    Log To Console    CT-Endorsements Row3 Created
    #ROW4------------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${endFN4}     10
    Click Element   ${endFN4}
    Press Keys      ${endFN4}  ${endFN4d}
    Wait Until Page Contains Element    ${endDT4}     10
    Click Element   ${endDT4}
    Wait Until Page Contains Element    ${DTopnATT}     10
    Click Element   ${DTopnATT}
    Sleep    2
    Log To Console    CT-Endorsements Row4 Created
    #ROW5-------------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${endFN5}     10
    Click Element   ${endFN5}
    Press Keys      ${endFN5}  ${endFN5d}
    Wait Until Page Contains Element    ${endDT5}     10
    Click Element   ${endDT5}
    Wait Until Page Contains Element    ${DTopnTXT}     10
    Click Element   ${DTopnTXT}
    Sleep    2
    Take Screenshot
    Log To Console    CT-Endorsements Row5 Created
    Log To Console    CT-Endorsements_Completed
CT-AdditionalCoverageTerms
    Log To Console    CT-AdditionalCoverageTerms_Started
    Click Element    ${AdditionalCoverageTerms}
    Sleep    3
    Take Screenshot
    #ROW1--------------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${actFN1}     10
    Click Element   ${actFN1}
    Press Keys      ${actFN1}  ${actFN1d}
    Wait Until Page Contains Element    ${actDT1}     10
    Click Element   ${actDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${actSOUR1}     10
    Click Element   ${actSOUR1}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    Log To Console    CT-AdditionalCoverageTerms Row5 Created
    #ROW2-----------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${actFN2}     10
    Click Element   ${actFN2}
    Press Keys      ${actFN2}  ${actFN2d}
    Wait Until Page Contains Element    ${actDT2}     10
    Click Element   ${actDT2}
    Wait Until Page Contains Element    ${DTopnTXT}     10
    Click Element   ${DTopnTXT}
    Sleep    2
    Log To Console    CT-AdditionalCoverageTerms Row5 Created
    #ROW3-----------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${actFN3}     10
    Click Element   ${actFN3}
    Press Keys      ${actFN3}  ${actFN3d}
    Wait Until Page Contains Element    ${actDT3}     10
    Click Element   ${actDT3}
    Wait Until Page Contains Element    ${DTopnATT}     10
    Click Element   ${DTopnATT}
    Sleep    2
    Take Screenshot
    Log To Console    CT-AdditionalCoverageTerms Row5 Created
    Log To Console    CT-AdditionalCoverageTerms_Completed
CT-RatingBasis
    Click Element    ${RatingBasis}
    Log To Console    CT-RatingBasis_Started
    Sleep    3
    Take Screenshot
    #ROW1-------------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${rbFN1}     10
    Click Element   ${rbFN1}
    Press Keys      ${rbFN1}  ${rbFN1d}
    Wait Until Page Contains Element    ${rbDT1}     10
    Click Element   ${rbDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${rbSOUR1}     10
    Click Element   ${rbSOUR1}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    Log To Console    CT-RatingBasis Row1 Created
    #ROW2--------------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${rbFN2}     10
    Click Element   ${rbFN2}
    Press Keys      ${rbFN2}  ${rbFN2d}
    Click Element   ${rbDT2}
    Wait Until Page Contains Element    ${DTopnNUM}     10
    Click Element   ${DTopnNUM}
    Sleep    2
    Log To Console    CT-RatingBasis Row2 Created
    #ROW3---------------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${rbFN3}     10
    Click Element   ${rbFN3}
    Press Keys      ${rbFN3}  ${rbFN3d}
    Click Element   ${rbDT3}
    Wait Until Page Contains Element    ${DTopnCUR}     10
    Click Element   ${DTopnCUR}
    Sleep    2
    Log To Console    CT-RatingBasis Row3 Created
    #ROW4---------------------------------------------------------
    Click Button    ${ctcladdrowbtn}
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
    Wait Until Page Contains Element    ${rbNewRules4}        10
    Click Element   ${rbNewRules4}
    Wait Until Page Contains Element    ${custruleopn}        10
    Click Element   ${custruleopn}
    Sleep    2
    Click Element   ${Addrowrule}
    Click Element   ${type1}
    Click Element   ${Exp1}
    Click Element   ${Field1}
    Click Element   ${rb1Field1opn}
    sleep   1
    Click Element   ${Addrowrule}
    Click Element   ${type2}
    Click Element   ${Exp2}
    Click Element   ${Field2}
    Click Element   ${rb1Field2opn}
    sleep   1
    Take Screenshot
    Click Element   ${Addrowrule}
    Click Element   ${type3}
    Click Element   ${Exp1}
    Click Element   ${Field3}
    Click Element   ${rb1Field3opn}
    Click Element    ${saverule}
    Sleep    1
    Click Element    ${CLOSE}
    Sleep    1
    Take Screenshot
    Log To Console    CT-RatingBasis Row4 Created
    Log To Console    CT-RatingBasis_Completed
CT-Subjectivities
    Click Element    ${Subjectivities}
    Sleep    3
    Take Screenshot
    #ROW1---------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${subFN1}     10
    Click Element   ${subFN1}
    Press Keys      ${subFN1}  ${subFN1d}
    Wait Until Page Contains Element    ${subDT1}     10
    Click Element   ${subDT1}
    Wait Until Page Contains Element    ${DTopnTXT}     10
    Click Element   ${DTopnTXT}
    Sleep    2
    Log To Console    CT-Subjectivities Row1 Created
    #ROW2---------------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${subFN2}     10
    Click Element   ${subFN2}
    Press Keys      ${subFN2}  ${subFN2d}
    Wait Until Page Contains Element    ${subDT2}     10
    Click Element   ${subDT2}
    Wait Until Page Contains Element    ${DTopnATT}     10
    Click Element   ${DTopnATT}
    Sleep    2
    Take Screenshot
    Log To Console    CT-Subjectivities Row2 Created
CT-PremiumTaxesFees
    Click Element    ${PremiumTaxesFees}
    Sleep    3
    Take Screenshot
    #ROW1----------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ptfFN1}     10
    Click Element   ${ptfFN1}
    Press Keys      ${ptfFN1}  ${ptfFN1d}
    Wait Until Page Contains Element    ${ptfDT1}     10
    Click Element   ${ptfDT1}
    Wait Until Page Contains Element    ${DTopnLOO}     10
    Click Element   ${DTopnLOO}
    Wait Until Page Contains Element    ${ptfSOUR1}     10
    Click Element   ${ptfSOUR1}
    Wait Until Page Contains Element    ${SOURopnCTL}     10
    Click Element   ${SOURopnCTL}
    Sleep    2
    Log To Console    CT-PremiumTaxesFees Row1 Created
    #ROW2------------------------------------------------------
    Click Button    ${ctcladdrowbtn}
    Wait Until Page Contains Element    ${ptfFN2}     10
    Click Element   ${ptfFN2}
    Press Keys      ${ptfFN2}  ${ptfFN2d}
    Wait Until Page Contains Element    ${ptfDT2}     10
    Click Element   ${ptfDT2}
    Wait Until Page Contains Element    ${DTopnCUR}     10
    Click Element   ${DTopnCUR}
    Take Screenshot
    Sleep    2
    Click Element    ${Finalizebtn}
    Sleep    4
    Wait Until Page Contains Element    ${Publish}
    Click Element    ${Publish}
    Sleep    4
    Wait For Condition	return document.readyState == "complete"
    Take Screenshot
    Log To Console    CT-PremiumTaxesFees Row2 Created