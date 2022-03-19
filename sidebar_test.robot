*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary
Resource            variable.robot
Resource            header_test.robot
Resource            crypto_test.robot
Resource            coin_test.robot

*** Keywords ***
Login Account
    page should contain element             ${log_tab}
    click element                           ${log_tab}
    click element                           ${email_field}
    Input text                              ${email_field}              ${test_email}
    click element                           ${pswd_field}
    Input text                              ${pswd_field}               ${test_pswd}
    sleep                                   2
    click element                           ${login_btn_tab}
    sleep                                   5
Click User Avatar and sidebar should appear
    wait until page contains element        ${avatar}
    page should contain element             ${avatar}
    click element                           ${avatar}
    sleep                                   2
    page should contain element             ${sb}
    sleep                                   2
Check sidebar component
    page should contain element             ${avatar_sb}
    page should contain element             ${logout_btn}
    sleep                                   2
Close sidebar
    click element                           ${backdrop_sb}
    sleep                                   2
Check added coin in the favourite list
    page should contain element             //*[@class="MuiDrawer-root MuiDrawer-modal"]/div[3]/div/div[2]/div/div[2]/span
    page should contain element             ${trash_icn}
    sleep                                   2
Check removed coin in the favourite list
    page should not contain element         //*[@class="MuiDrawer-root MuiDrawer-modal"]/div[3]/div/div[2]/div/div[2]/span
    page should not contain element         ${trash_icn}
    sleep                                   2
Click trash icon to remove favourite
    page should contain element             ${trash_icn}
    click element                           ${trash_icn}
    sleep                                   2
Click logout and check header component
    page should contain element             ${logout_btn}
    click element                           ${logout_btn}
    sleep                                   2
    wait until page contains element        ${header}
    page should not contain element         ${avatar}
    page should contain element             ${currency_btn}
    page should contain element             ${login_btn}

## Below Test Cases are for this particular page Component Testing -----------------------------------------------------
## Uncomment Test to test the component --------------------------------------------------------------------------------

#*** Test Cases ***
#Open Website
#    Open Browser                           https://cryptonite5.netlify.app/  chrome
#    maximize browser window
#Sidebar Component Test
#    Click on the login button
#    Click on the login tab
#    Login Account
#    Click User Avatar and sidebar should appear
#    Check sidebar component
#    Close sidebar
#    Return to Homepage
#    Click on the Crypto text and Navigate to Crypto Page
#    Click the coin in the table and navigate to respective coin page from Crypto
#    Logged in and check page component
#    Click Add to Favourite button and check the component
#    Click User Avatar and sidebar should appear
#    Check added coin in the favourite list
#    Click trash icon to remove favourite
#    Click logout and check header component
#    Return to Homepage
#Close Website
#    Close Browser