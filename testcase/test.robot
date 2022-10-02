*** Settings ***
Library    AppiumLibrary
Test Timeout    1 minutes
Resource    ../keyword_all/key_login.robot



# R58M64F8VHY R58N20BD2LW

*** Test Cases ***
Case01 
    เปิด app ใหม่
    สมัครด้วย gamil
    Allow permission
    ผู้ใช้งานจะเข้าหน้าหลักได้
