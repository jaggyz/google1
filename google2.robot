*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
${BROWSER}    chrome
${SEARCH_KEYWORD}    สถานที่ฉีดวัคซีนคนอายุ 60 ปีขึ้นไป
${ENTER}    RETURN
${EXPECTED_RESULT}    สถานีกลางบางซื่อ

*** Test Cases ***
อาม่าต้องการค้นหาสถานที่ฉีดวัคซีนคนอายุ 60 ปีขึ้นไป
    เข้า www.google.com
    ใส่คำค้น "สถานที่ฉีดวัคซีนคนอายุ 60 ปีขึ้นไป"
    แสดงผลการค้นหาจะต้องเจอ "สถานีกลางบางซื่อ"
    ปืด google
    
*** Keywords ***
เข้า www.google.com
    Open Browser    url=${URL}    browser=${BROWSER}

ใส่คำค้น "สถานที่ฉีดวัคซีนคนอายุ 60 ปีขึ้นไป"
    Input Text    name=q    ${SEARCH_KEYWORD}
    Press Keys    name=q    ${ENTER}

แสดงผลการค้นหาจะต้องเจอ "สถานีกลางบางซื่อ"
    Page Should Contain    ${EXPECTED_RESULT}

ปืด google
    Close All Browsers


    