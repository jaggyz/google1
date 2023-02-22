*** Settings ***
Library    SeleniumLibrary
Test Template    ต้องการค้นหา จะต้องเจอ

*** Variables ***
${URL}    https://www.google.com
${BROWSER}    chrome
${ENTER}    RETURN

*** Test Cases ***                           คำค้นหา                        จะต้องเจอ
อาม่าต้องการค้นหาสถานที่ฉีดวัคซีนคนอายุ 60 ปีขึ้นไป    สถานที่ฉีดวัคซีนคนอายุ 60 ปีขึ้นไป    สถานีกลางบางซื่อ
อาม่าต้องการค้นหาอ่านข่าวทั้งน้ำตา                   อ่านข่าวทั้งน้ำตา                  สรยุทธ
อาม่าต้องการค้นหาภาษีวัคซีน                       ภาษีวัคซีน                       อ.ลอย
    
*** Keywords ***
ต้องการค้นหา จะต้องเจอ
    [Arguments]    ${SEARCH_KEYWORD}    ${EXPECTED_RESULT}
    เข้า www.google.com
    ใส่คำค้น    ${SEARCH_KEYWORD}
    แสดงผลการค้นหาจะต้องเจอ    ${EXPECTED_RESULT}
    ปืด google

เข้า www.google.com
    Open Browser    url=${URL}    browser=${BROWSER}

ใส่คำค้น
    [Arguments]    ${SEARCH_KEYWORD}
    Input Text    name=q    ${SEARCH_KEYWORD}
    Press Keys    name=q    ${ENTER}

แสดงผลการค้นหาจะต้องเจอ
    [Arguments]    ${EXPECTED_RESULT}
    Wait Until Page Contains    ${EXPECTED_RESULT}

ปืด google
    Close All Browsers


    