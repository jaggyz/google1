*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
อาม่าต้องการค้นหาสถานที่ฉีดวัคซีนคนอายุ 60 ปีขึ้นไป
    Open Browser    url=https://www.google.com    browser=chrome
    Input Text    name=q    สถานที่ฉีดวัคซีนคนอายุ 60 ปี
    Press Keys    name=q    RETURN
    Page Should Contain    สถานีกลางบางซื่อ
    Close All Browsers
    
*** Keywords ***

    