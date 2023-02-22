*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
ค้นหาคำว่า วัคซีน ใน google จะเจอคำว่า วัคซีนโควิด 19
    เข้า website google ด้วย chrome browser
    พิมพ์ในช่อง search ด้วยคำว่า วัคซีน
    กดค้นหา
    จะต้องเห็นคำว่า วัคซีนโควิด 19
    ปิด chrome

*** Keywords ***
เข้า website google ด้วย chrome browser
    Open Browser    url=https://www.google.co.th    browser=chrome

พิมพ์ในช่อง search ด้วยคำว่า วัคซีน
    Input Text    name=q    วัคซีน

กดค้นหา
    Submit Form
    Wait Until Page Contains    text=ผลการค้นหาประมาณ

จะต้องเห็นคำว่า วัคซีนโควิด 19
    Page Should Contain    text=วัคซีนโควิด 19
ปิด chrome
    Close All Browsers