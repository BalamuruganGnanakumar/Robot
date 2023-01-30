*** settings ***
Library    SeleniumLibrary
Library    XML
Library    Screenshot
Resource    ../../TestScripts/Pages/Common.robot
Resource    ../../TestScripts/Pages/LoginPage.robot
Resource    ../../TestScripts//Pages/Product.robot
Resource    ../../TestScripts//Pages/CoverageTermHeader.robot
Resource    ../../TestScripts//Pages/ProgramHeader.robot
Resource    ../../TestScripts//Pages/ProgramStructure.robot
Resource    ../../TestScripts//Pages/CoverageTerms.robot
*** test cases ***
LoginPage
    LoginPage.LogintoWoodruffPage
Navigate_to_ProductConfigure
    Common.NavigatetoProductConfigurator
Product_Form
    Product.ProductForm
ProgramHeader_Form
    programheader.ProgramHeaderForm
ProgramStructure_Form
    Programstructure.ProgramStructureForm
CoverageTermHeader_Form
    Coveragetermheader.CoverageTermHeaderForm
CoverageTerm_Form
    Coverageterms.CT-Coveragelimit
    Coverageterms.CT-Deductibles
    Coverageterms.CT-Endorsements
    Coverageterms.CT-AdditionalCoverageTerms
    Coverageterms.CT-RatingBasis
    Coverageterms.CT-Subjectivities
    Coverageterms.CT-PremiumTaxesFees
    [Teardown]    Close Browser

