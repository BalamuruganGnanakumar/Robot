*** settings ***
Library           SeleniumLibrary

*** variables ***
${URL}              https://sci-admin-rc.azurewebsites.net/login
${BROWSER}          chrome
${username}         rkz63828@mzico.com
${password}         Sumaiya@2022
${username_txbox}   //*[@id='userNametxt']
${password_txbox}   id:userPwdtxt
${LoginBtn}         xpath://*[@id="loginform"]/div[3]/div/button

${SelectLocation_drpdwn}        xpath://*[@id="locationId"]/div/div[2]
${SelectLocation_drpdwn_opn}    xpath://*[@id="mat-option-0"]/span

${SelectApplication_drpdwn}         xpath://*[@id="application"]/div/div[2]
${SelectApplication_drpdwn_opn}     xpath://*[@id="mat-option-1"]/span
${cont_btn}                         xpath://*[@id="loginform"]/div[5]/div/button
${ADD_btn}                          xpath://button[@class='mat-focus-indicator light-button fontcolor mat-raised-button mat-button-base']
${Platform_radbtn}                  xpath://*[@id="mat-radio-8"]/label/span[1]

${Platform_drpdwn}      xpath://*[@id="mat-select-38"]/div/div[2]
${Platform_drpdwn_opn}  xpath://*[@id="mat-option-42"]/div

${Providerid_txtbox}  id:name

${SearchProviderEHR_btn}   xpath://*[@id="mat-tab-content-0-0"]/div/app-find-provider/div[2]/div[2]/button

${Update_btn}   xpath://button[@class='btn btn-custom-1 btn-primary']
${Cancel_btn}   xpath://button[@class='btn btn-custom-2 mr-3 btn-border']

${DataManager_btn}  xpath://*[@id="navbarDropdownMenuLink"]
${con_sym_ser_btn}  xpath://*[@id="navbarNavDropdown"]/ul/li/ul/li[2]/a
${AddConSym_btn}    xpath://button[@class='btn btn-custom-2 mt-3 float-right btn-border']
${con_sym_ser_sel}  xpath://*[@id="LocationType"]

${con_sym_ser_sel_con}  xpath://*[@id="LocationType"]/option[1]
${con_sym_ser_sel_sym}  xpath://*[@id="LocationType"]/option[2]
${ADD_title}        id:mat-dialog-title-0
${code_txtbox}      xpath://input[@placeholder='Code']
${name_txtbox}      xpath://input[@placeholder='Name']
${Desc_txtbox}      xpath://input[@placeholder='Description']
${Save_btn}         xpath://button[@type='submit']

${Mappers_btn}          xpath://*[@id="navbarNavDropdown"]/ul/li/ul/li[9]/a
${con_sym_ser_mapper}   xpath://*[@id="navbarNavDropdown"]/ul/li/ul/li[9]/ul/li[1]/a
${Mapprovider_btn}      xpath://div[@class='fontcolor map-selected-provider-btn ng-star-inserted']
${Add_Mapprovider_btn}  xpath://div[@class='fontcolor map-selected-provider-btn']


${con_provider_chk}     xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-map-provider-modal/div[2]/div[2]/div/mat-table/tr[1]/th[1]/mat-checkbox/label/span[1]/input
${sym_provider_chk}     xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-map-provider-modal/div[2]/div[2]/div/mat-table/tr[1]/th[1]/mat-checkbox/label/span[1]/input

${Remove_consym1}   xpath:/html/body/app-root/div[2]/app-symptoms-manager/div/app-symptoms/div[2]/table/tbody/tr[2]/td[7]/button
${Remove_consym2}   xpath:/html/body/app-root/div[2]/app-symptoms-manager/div/app-symptoms/div[2]/table/tbody/tr[1]/td[7]/button
${delete_confirm}   xpath://button[@class='btn btn-block btn-danger']

*** test cases ***
R1 Test
    LoginPage
    SelectLocation
    SearchproviderDB
    createCondition
    createsymptom
    MappingCondition
    Mappingsymptom
    RemoveConSym
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

SelectLocation
    Title Should Be    Provider Directory
    Wait Until Element Is Visible  ${SelectLocation_drpdwn}  10
    Click Element   ${SelectLocation_drpdwn}
    Click Element   ${SelectLocation_drpdwn_opn}
    Wait Until Element Is Visible  ${SelectApplication_drpdwn}  10
    Click Element   ${SelectApplication_drpdwn}
    Click Element   ${SelectApplication_drpdwn_opn}
    Wait Until Element Is enabled  ${cont_btn}  10
    Click Button    ${cont_btn}
    sleep  2

SearchproviderDB
    Click Element  ${ADD_btn}
    Wait Until Element Is Visible  ${Platform_radbtn}  10
    Click Element  ${Platform_radbtn}
    sleep  5
    Wait Until Element Is Visible  ${Platform_drpdwn}  10
    Wait Until Element Is Enabled  ${Platform_drpdwn}  10
    Click Element  ${Platform_drpdwn}
    Press Keys  none    ARROW_DOWN
    Press Keys  none    ARROW_DOWN
    Press Keys  none    ENTER
    input text   ${Providerid_txtbox}   593923
    Click Element  ${SearchProviderEHR_btn}
    Wait Until Element Is Visible   ${Update_btn}  20
    Click Element  ${Cancel_btn}
    sleep  5

createCondition
    Click Element  ${DataManager_btn}
    Click Element  ${con_sym_ser_btn}
    Wait Until Element Is Visible   ${AddConSym_btn}  10
    Wait Until Element Is Enabled   ${AddConSym_btn}  10
    Click Element   ${AddConSym_btn}
    sleep  2
#    Select From List By Index  ${con_sym_ser_sel}  1
#    Click Element   ${con_sym_ser_sel}
#    Click Element   ${con_sym_ser_sel_con}
#    Wait Until Element Is Visible  ${ADD_title}  10
#    Select From List by Value  ${con_sym_ser_sel}  Condition
    input text  ${code_txtbox}  S81
    input text  ${name_txtbox}  Leg Fracture
    input text  ${Desc_txtbox}  fracture of left lower leg
    Wait Until Element Is Enabled  ${Save_btn}
    Click Button  ${Save_btn}
    sleep  5

createsymptom
    Click Element  ${DataManager_btn}
    Click Element  ${con_sym_ser_btn}
    Wait Until Element Is Visible   ${AddConSym_btn}  10
    Wait Until Element Is Enabled   ${AddConSym_btn}  10
    Click Element   ${AddConSym_btn}
    sleep  2
    Press Keys  none    ARROW_DOWN
#    Select From List By Index  ${con_sym_ser_sel}  2
#    Click Element   //option[@value='Symptom']
#    Press Keys  none    ARROW_DOWN
#    Press Keys  none    ENTER
#    Click Element   //*[@id="LocationType"]/option[2]
#    Wait Until Element Is Visible  ${ADD_title}  10
#    Select From List by Value  //*[@id="LocationType"]  Symptom
    input text  ${code_txtbox}  H40
    input text  ${name_txtbox}  Glaucoma
    input text  ${Desc_txtbox}  Primary Open Angle Glaucoma
    Wait Until Element Is Enabled  ${Save_btn}
    Click Button  ${Save_btn}
    sleep  5

MappingCondition
    Click Element  ${DataManager_btn}
    Click Element  ${Mappers_btn}
    Click Element  ${con_sym_ser_mapper}
    Press Keys  none    TAB
    Press Keys  none    TAB
    Press Keys  none    TAB
    Press Keys  none    TAB
    #select from list by index   ${con_sym_ser_sel}  1
#    Wait Until Element Is Visible  ${Mapprovider_btn}
    Wait Until Element Is Enabled  ${Mapprovider_btn}
    Click Element  ${Mapprovider_btn}
#    Wait Until Element Is Visible  ${con_provider_chk}  20
    sleep  2
#    Select Checkbox  ${con_provider_chk}
    Press Keys  none    SPACE
    Click Element  ${Add_Mapprovider_btn}
    sleep   5

Mappingsymptom
    Click Element  ${DataManager_btn}
    Click Element  ${Mappers_btn}
    Click Element  ${con_sym_ser_mapper}
    sleep  2
    select from list by index   ${con_sym_ser_sel}  1
    sleep  2
    Click Element  ${Mapprovider_btn}
    sleep  2
    Press Keys  none    SPACE
    Click Element  ${Add_Mapprovider_btn}
    sleep   5

RemoveConSym
    Click Element  ${DataManager_btn}
    Click Element  ${con_sym_ser_btn}
    Wait Until Element Is Visible  ${Remove_consym1}   10
    Wait Until Element Is Visible  ${Remove_consym2}   10
    Wait Until Element Is Enabled  ${Remove_consym1}   10
    Wait Until Element Is Enabled  ${Remove_consym2}   10
    Click Button  ${Remove_consym1}
    Wait Until Element Is Visible  ${delete_confirm}   10
    Click Button  ${delete_confirm}
    sleep  5
    Click Button  ${Remove_consym2}
    Wait Until Element Is Visible  ${delete_confirm}   10
    Click Button  ${delete_confirm}














