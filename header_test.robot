*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary
Resource            variable.robot
Resource            sidebar_test.robot

*** Keywords ***
Return to Homepage
    sleep                                   2
    execute javascript                      window.scrollTo(0,0)
    sleep                                   2
    wait until page contains element        ${header}
    click element                           ${logo_header}
    location should be                      https://cryptonite5.netlify.app/
    sleep                                   2
Check header component
    wait until page contains element        ${header}
    page should contain element             ${logo_header}
    page should contain element             ${crypto_header}
    page should contain element             ${forex_header}
    page should contain element             ${aboutUs_header}
    page should contain element             ${help_header}
    page should contain element             ${currency_btn}
    page should contain element             ${login_btn}
    sleep                                   2
Click on the Logo and Navigate to Homepage
    wait until page contains element        ${header}
    click element                           ${logo_header}
    location should be                      https://cryptonite5.netlify.app/
    sleep                                   2
Click on the Crypto text and Navigate to Crypto Page
    wait until page contains element        ${header}
    click element                           ${crypto_header}
    location should be                      https://cryptonite5.netlify.app/crypto
    sleep                                   2
Click on the Crypto text and Navigate to Forex Page
    wait until page contains element        ${header}
    click element                           ${forex_header}
    location should be                      https://cryptonite5.netlify.app/forex
    sleep                                   2
Click on the Crypto text and Navigate to About Us Page
    wait until page contains element        ${header}
    click element                           ${aboutUs_header}
    location should be                      https://cryptonite5.netlify.app/about
    sleep                                   2
Click on the Crypto text and Navigate to Help Page
    wait until page contains element        ${header}
    click element                           ${help_header}
    location should be                      https://cryptonite5.netlify.app/help
    sleep                                   2
Click on the currency button
    wait until page contains element        ${header}
    click element                           ${currency_btn}
    page should contain element             ${currency_opt}
    sleep                                   2
Check for the currency option
    page should contain element             //*[@id="menu-"]/div[3]/ul/li[1]
    page should contain element             //*[@id="menu-"]/div[3]/ul/li[2]
    sleep                                   2
Click USD the currency should be USD and dropdown should disappear
    click element                           //*[@id="menu-"]/div[3]/ul/li[1]
    sleep                                   2
    page should contain element             //*[text()="USD"]
    page should not contain element         ${currency_opt}
    sleep                                   2
Click MYR the currency should be MYR and dropdown should disappear
    wait until page contains element        ${header}
    click element                           ${currency_btn}
    page should contain element             ${currency_opt}
    click element                           //*[@id="menu-"]/div[3]/ul/li[2]
    sleep                                   2
    page should contain element             //*[text()="MYR"]
    page should not contain element         ${currency_opt}
    sleep                                   2
Click on the login button
    wait until page contains element        ${header}
    click element                           ${login_btn}
    sleep                                   2
    wait until page contains element        ${log_sign_tab}
    page should contain element             ${log_sign_tab}
    sleep                                   2
Click on the login tab
    page should contain element             ${log_tab}
    click element                           ${log_tab}
    sleep                                   2
    page should contain element             //*[text()="Enter Email"]
    page should contain element             //*[text()="Enter Your Password"]
    page should contain element             //*[text()="Login" and contains (@class, "MuiButton-label")] //parent::button
    sleep                                   2
Click on the sign-up tab
    page should contain element             ${sign_tab}
    click element                           ${sign_tab}
    sleep                                   2
    page should contain element             //*[text()="Enter Email"]
    page should contain element             //*[text()="Enter Password"]
    page should contain element             //*[text()="Confirm Password"]
    page should contain element             //*[text()="Sign Up" and contains (@class, "MuiButton-label")] //parent::button
    sleep                                   2
Login and check header component
    click element                           ${log_tab}
    click element                           ${email_field}
    Input text                              ${email_field}              ${test_email}
    click element                           ${pswd_field}
    Input text                              ${pswd_field}               ${test_pswd}
    sleep                                   2
    click element                           ${login_btn_tab}
    sleep                                   10
    page should contain element             ${avatar}
    page should contain element             ${currency_btn}
Decrease window size and check header component
    set window size                         820         1180
    sleep                                   5
    page should not contain                 ${crypto_header}
    page should not contain                 ${forex_header}
    page should not contain                 ${aboutUs_header}
    page should not contain                 ${help_header}
    page should contain element             ${logo_header}
    page should contain element             ${currency_btn}
    page should contain element             ${login_btn}
    page should contain element             ${hamburger}
    sleep                                   5
Close tab
    click element                           ${backdrop_tab}
    sleep                                   2
Click on the hamburger menu
    page should contain element             ${hamburger}
    click element                           ${hamburger}
    sleep                                   2
Check hamburger menu component
    page should contain element             ${hamburger_opt}
    page should contain element             ${ham_crypto}
    page should contain element             ${ham_forex}
    page should contain element             ${ham_about}
    page should contain element             ${ham_help}
    page should contain element             ${ham_x}
    sleep                                   2
Close hamburger
    page should contain element             ${ham_x}
    click element                           ${ham_x}
    page should not contain element         ${hamburger_opt}
    sleep                                   2
Check CRYPTO in hamburger navigation
    page should contain element             ${ham_crypto}
    click element                           ${ham_crypto}
    location should be                      https://cryptonite5.netlify.app/crypto
    sleep                                   2
Check FOREX in hamburger navigation
    page should contain element             ${ham_forex}
    click element                           ${ham_forex}
    location should be                      https://cryptonite5.netlify.app/forex
    sleep                                   2
Check ABOUT US in hamburger navigation
    page should contain element             ${ham_about}
    click element                           ${ham_about}
    location should be                      https://cryptonite5.netlify.app/about
    sleep                                   2
Check HELP in hamburger navigation
    page should contain element             ${ham_help}
    click element                           ${ham_help}
    location should be                      https://cryptonite5.netlify.app/help
    sleep                                   2

## Below Test Cases are for this particular page Component Testing -----------------------------------------------------
## Uncomment Test to test the component --------------------------------------------------------------------------------

#*** Test Cases ***
#Open Website
#    Open Browser                           https://cryptonite5.netlify.app/  chrome
#    maximize browser window
#Header Navigation Test
#    Check header component
#    Click on the Logo and Navigate to Homepage
#    Return to Homepage
#    Click on the Crypto text and Navigate to Crypto Page
#    Return to Homepage
#    Click on the Crypto text and Navigate to Forex Page
#    Return to Homepage
#    Click on the Crypto text and Navigate to About Us Page
#    Return to Homepage
#    Click on the Crypto text and Navigate to Help Page
#    Return to Homepage
#    Click on the currency button
#    Check for the currency option
#    Click USD the currency should be USD and dropdown should disappear
#    Click MYR the currency should be MYR and dropdown should disappear
#    Click on the login button
#    Click on the sign-up tab
#    Click on the login tab
#    Login and check header component
#    Click User Avatar and sidebar should appear
#    Click logout and check header component
#    Decrease window size and check header component
#    Click on the hamburger menu
#    Check hamburger menu component
#    Close hamburger
#    Click on the hamburger menu
#    Check CRYPTO in hamburger navigation
#    Click on the hamburger menu
#    Check FOREX in hamburger navigation
#    Click on the hamburger menu
#    Check ABOUT US in hamburger navigation
#    Click on the hamburger menu
#    Check HELP in hamburger navigation
#    Maximize browser window
#    Return to Homepage
#    Check header component
#Close Website
#    Close Browser