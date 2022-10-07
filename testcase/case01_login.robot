*** Settings ***
Library         AppiumLibrary
Resource        ../keyword_all/key_login.robot

Test Timeout    1 minutes


*** Test Cases ***
case01 Add Wallet
    Open app with gmail
    add wallet

case02 cancel edit wallet
    cancel edit wallet

case03 edit wallet success
    edit wallet success

case04 cancel delete wallet
    cancel delete wallet

case05 edelete wallet success
    delete wallet success


*** Keywords ***
cancel delete wallet
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/tvDone    10
    Click Element    id=com.neversitup.piggipogo:id/tvDone
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/edtWalletName
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/btnDeleteWallet
    Click Element    id=com.neversitup.piggipogo:id/btnDeleteWallet
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/btn2
    Click Element    id=com.neversitup.piggipogo:id/btn2

delete wallet success
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/tvDone    10
    Click Element    id=com.neversitup.piggipogo:id/tvDone
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/edtWalletName
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/btnDeleteWallet
    Click Element    id=com.neversitup.piggipogo:id/btnDeleteWallet
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/btn1
    Click Element    id=com.neversitup.piggipogo:id/btn1
    ${Add Wallet}=    Get Text    id=com.neversitup.piggipogo:id/dashboard_add_card_label

add wallet
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/layoutWalletIndicator
    Click Element    id=com.neversitup.piggipogo:id/layoutWalletIndicator
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/dashboard_add_card
    Click Element    id=com.neversitup.piggipogo:id/dashboard_add_card

    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/edtWalletName    10
    Input Text    id=com.neversitup.piggipogo:id/edtWalletName    Pun
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imvDone
    Click Element    id=com.neversitup.piggipogo:id/imvDone
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/tvWalletName
    ${Pun}=    Get Text    id=com.neversitup.piggipogo:id/tvWalletName

edit wallet success
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/tvDone    10
    Click Element    id=com.neversitup.piggipogo:id/tvDone
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/edtWalletName
    Clear Text    id=com.neversitup.piggipogo:id/edtWalletName
    Input Text    id=com.neversitup.piggipogo:id/edtWalletName    PunEdit
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/imvDone
    Click Element    id=com.neversitup.piggipogo:id/imvDone
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/tv_action_bar    10
    ${PunEdit}=    Get Text    id=com.neversitup.piggipogo:id/tv_action_bar

cancel edit wallet
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/imvWalletLogo    10
    Click Element    id=com.neversitup.piggipogo:id/imvWalletLogo
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/tvDone    10
    Click Element    id=com.neversitup.piggipogo:id/tvDone
    Wait Until Page Contains Element    id=com.neversitup.piggipogo:id/edtWalletName
    Clear Text    id=com.neversitup.piggipogo:id/edtWalletName
    Click Element    id=com.neversitup.piggipogo:id/imv_close_page
