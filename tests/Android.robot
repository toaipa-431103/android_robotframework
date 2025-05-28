*** Settings ***
Resource        ../resources/common.robot

Test Setup    Open Test App
Test Teardown    Close Test App

*** Variables ***
${btn_5}        accessibility_id=5
#${btn_5}        id=com.sec.android.app.popupcalculator:id/calc_keypad_btn_05
#${btn_5}       android=new UiSelector().resourceId("com.sec.android.app.popupcalculator:id/calc_keypad_btn_05")
#${btn_5}        xpath=//android.widget.Button[@content-desc="5"]
${btn_plus}     accessibility_id=Cộng
${btn_subtract}     accessibility_id=Trừ
${btn_3}        accessibility_id=3
${btn_equal}    accessibility_id=Bằng
${txt_result}   id=com.sec.android.app.popupcalculator:id/calc_edt_formula


*** Test Cases ***
Test Add Two Numbers
    Click element    ${btn_5}
    Click element    ${btn_plus}
    Click element    ${btn_3}
    Click element    ${btn_equal}
    ${text}=  Get text    ${txt_result}
    ${result}=    Replace String    ${text}    ${SPACE}Kết quả tính toán    ${EMPTY}
    Should be equal as strings    ${result}     8

Test Subtract Two Numbers
    Click element    ${btn_5}
    Click element    ${btn_subtract}
    Click element    ${btn_3}
    Click element    ${btn_equal}
    ${text}=  Get text    ${txt_result}
    ${result}=    Replace String    ${text}    ${SPACE}Kết quả tính toán    ${EMPTY}
    Should be equal as strings    ${result}     2
