*** Settings ***
Library    AppiumLibrary
Resource    ../variable/index_va.robot

*** Keywords ***
Open app with gmail
    Open Application    ${REMOTE_URL}
    ...  platformName=${platformName}
    ...  app=${appium:app}           
    ...  deviceName=${appium:deviceName}
    ...  automationName=${appium:automationName}   appPackage=com.neversitup.piggipogo
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/signInButton

# สมัครด้วย gamil
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/signInButton
    Click Element    id=com.neversitup.piggipogo:id/signInButton

    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]
    Click Element    xpath=//android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]

# Allow permission
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/btnTermAccept
    Click Element    id=com.neversitup.piggipogo:id/btnTermAccept
    
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/cb
    Click Element    id=com.neversitup.piggipogo:id/cb

    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/btnPolicyAccept
    Click Element    id=com.neversitup.piggipogo:id/btnPolicyAccept

    Wait Until Page Contains Element    id=com.android.permissioncontroller:id/permission_allow_button
    Click Element    id=com.android.permissioncontroller:id/permission_allow_button

# ผู้ใช้งานจะเข้าหน้าหลักได้
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/imvAds
    Click Element    id=com.neversitup.piggipogo:id/imvAds