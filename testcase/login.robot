*** Settings ***
Library    AppiumLibrary
Test Timeout    1 minutes
Resource    ../keyword_all/key_login.robot


*** Test Cases ***
Case01 
    Open app with gmail
    # สมัครด้วย gamil
    # Allow permission
    # ผู้ใช้งานจะเข้าหน้าหลักได้

*** Keywords ***
add wallet
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/layoutWalletIndicator