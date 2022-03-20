*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary
Resource            variable.robot
Resource            header_test.robot
Resource            sidebar_test.robot
Resource            coin_test.robot

*** Keywords ***
Login Tab - Check if input erase when tab is changed
    page should contain element                     ${log_sign_tab}
    page should contain element                     ${sign_tab}
    click element                                   ${sign_tab}
    sleep                                           2
    page should contain element                     ${log_tab}
    click element                                   ${log_tab}
    sleep                                           2
    textfield should contain                        ${email_field}              ${EMPTY}
    textfield should contain                        ${pswd_field}               ${EMPTY}
    sleep                                           2

# Email Field Component ------------------------------------------------------------------------------------------------
Login Tab - Clear Email field
    press keys                                      ${email_field}    CTRL+A    DELETE
Login Tab - Check Delete button f(x) - Email field
    press keys                                      ${email_field}    CTRL+A    DELETE
Login Tab - Check Backspace button f(x) - Email field
    press keys                                      ${email_field}    CTRL+A    BACKSPACE
Login Tab - Check Copy f(x) - Email field
    press keys                                      ${email_field}    CTRL+A    CTRL+C
Login Tab - Check Paste f(x) - Email field
    press keys                                      ${email_field}    CTRL+V
Login Tab - Valid email in Email Field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=email@test.com.my
    sleep                                           2
    textfield should contain                        ${email_field}           email@test.com.my
Login Tab - Check for alpha & numeric character in Email field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=abc123
    sleep                                           2
    textfield should contain                        ${email_field}           abc123
Login Tab - Check for uppercase alphabet in Email field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=ABCDEFG
    sleep                                           2
    textfield should contain                        ${email_field}           ABCDEFG
Login Tab - Check for lowercase alphabet in Email field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=abcdefg
    sleep                                           2
    textfield should contain                        ${email_field}           abcdefg
Login Tab - Check for uppercase & lowercase alphabet in Email field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=abcDEFG
    sleep                                           2
    textfield should contain                        ${email_field}           abcDEFG
Login Tab - Check for special character in Email field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=@
    sleep                                           2
    textfield should contain                        ${email_field}           @

# Password Field Component ---------------------------------------------------------------------------------------------
Login Tab - Clear Pswd field
    press keys                                      ${pswd_field}           CTRL+A    DELETE
Login Tab - Check Delete button f(x) - Pswd field
    press keys                                      ${pswd_field}           CTRL+A    DELETE
Login Tab - Check Backspace button f(x) - Pswd field
    press keys                                      ${pswd_field}           CTRL+A    BACKSPACE
Login Tab - Check Copy f(x) - Pswd field
    press keys                                      ${pswd_field}           CTRL+A    CTRL+C
Login Tab - Check Paste f(x) - Pswd field
    press keys                                      ${pswd_field}           CTRL+V
Login Tab - Valid Pswd in Pswd Field
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc123
    sleep                                           2
    textfield should contain                        ${pswd_field}           abc123
Login Tab - Check for alpha & numeric character in Pswd field
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc123
    sleep                                           2
    textfield should contain                        ${pswd_field}           abc123
Login Tab - Check for uppercase alphabet in Pswd field
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=ABCDEFG
    sleep                                           2
    textfield should contain                        ${pswd_field}           ABCDEFG
Login Tab - Check for lowercase alphabet in Pswd field
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abcdefg
    sleep                                           2
    textfield should contain                        ${pswd_field}           abcdefg
Login Tab - Check for uppercase & lowercase alphabet in Pswd field
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abcDEFG
    sleep                                           2
    textfield should contain                        ${pswd_field}           abcDEFG
Login Tab - Check for special character in Pswd field
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=@
    sleep                                           2
    textfield should contain                        ${pswd_field}           @

# Login flow test  -----------------------------------------------------------------------------------------------------
Login Tab - One of the mandatory field is not filled, click login
    # Password field is empty ------------------------------------------------------------------------------------------
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=email@test.com.my
    sleep                                           2
    textfield should contain                        ${pswd_field}            ${EMPTY}
    sleep                                           2
    page should contain element                     ${login_btn_tab}
    click element                                   ${login_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE
    sleep                                           2
    # Email field is empty ---------------------------------------------------------------------------------------------
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc123
    sleep                                           2
    textfield should contain                        ${email_field}          ${EMPTY}
    sleep                                           2
    page should contain element                     ${login_btn_tab}
    click element                                   ${login_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE
    sleep                                           2
Login Tab - All mandatory field is not filled, click login
    textfield should contain                        ${email_field}          ${EMPTY}
    textfield should contain                        ${pswd_field}           ${EMPTY}
    sleep                                           2
    page should contain element                     ${login_btn_tab}
    click element                                   ${login_btn_tab}
    sleep                                           2
Login Tab - Invalid email input, click login
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}          text=email@@test.com.my
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc123
    sleep                                           2
    page should contain element                     ${login_btn_tab}
    click element                                   ${login_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE
Login Tab - Unregistered email input, click login
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}          text=emailUnregistered@test.com.my
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc123
    sleep                                           2
    page should contain element                     ${login_btn_tab}
    click element                                   ${login_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE
Login Tab - Invalid password input, click login
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}          text=email@test.com.my
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=wrongPassword
    sleep                                           2
    page should contain element                     ${login_btn_tab}
    click element                                   ${login_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE
Login Tab - Valid credential, click login
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}          text=emailtest@test.com.my
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc123
    sleep                                           2
    page should contain element                     ${login_btn_tab}
    click element                                   ${login_btn_tab}
    sleep                                           2
Login Tab - Check for Pswd limit in Pswd Field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}          text=emailtest@test.com.my
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc
    sleep                                           2
    page should contain element                     ${login_btn_tab}
    click element                                   ${login_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    textfield should contain                        ${pswd_field}           abc
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE

# Click Login ----------------------------------------------------------------------------------------------------------
Login Tab - Click login btn
    page should contain element                     ${login_btn_tab}
    click element                                   ${login_btn_tab}

# Below Test Cases are for this particular page Component Testing -----------------------------------------------------
# Uncomment Test to test the component ---------------------------------------------------------------------------------
#*** Test Cases ***
#Open Website
#    Open Browser                           https://cryptonite5.netlify.app/  chrome
#    maximize browser window
#
#Login Tab Test
#    Return to Homepage
#    Check header component
#    Click on the login button
#    Click on the login tab
#
#Login Tab - Check for input when click another tab
#    Login Tab - Valid email in Email Field
#    Login Tab - Valid Pswd in Pswd Field
#    Login Tab - Check if input erase when tab is changed
#
#Login Tab - Email field component
#    Login Tab - Valid email in Email Field
#    Login Tab - Check Delete button f(x) - Email field
#    Login Tab - Valid email in Email Field
#    Login Tab - Check Backspace button f(x) - Email field
#    Login Tab - Valid email in Email Field
#    Login Tab - Check Copy f(x) - Email field
#    Login Tab - Clear Email field
#    Login Tab - Check Paste f(x) - Email field
#    Login Tab - Clear Email field
#
#    Login Tab - Check for alpha & numeric character in Email field
#    Login Tab - Clear Email field
#    Login Tab - Check for uppercase alphabet in Email field
#    Login Tab - Clear Email field
#    Login Tab - Check for lowercase alphabet in Email field
#    Login Tab - Clear Email field
#    Login Tab - Check for uppercase & lowercase alphabet in Email field
#    Login Tab - Clear Email field
#    Login Tab - Check for special character in Email field
#    Login Tab - Clear Email field
#
#Login Tab - Password field component
#    Login Tab - Valid Pswd in Pswd Field
#    Login Tab - Check Delete button f(x) - Pswd field
#    Login Tab - Valid Pswd in Pswd Field
#    Login Tab - Check Backspace button f(x) - Pswd field
#    Login Tab - Valid Pswd in Pswd Field
#    Login Tab - Check Copy f(x) - Pswd field
#    Login Tab - Clear Pswd field
#    Login Tab - Check Paste f(x) - Pswd field
#    Login Tab - Clear Pswd field
#
#    Login Tab - Check for alpha & numeric character in Pswd field
#    Login Tab - Clear Pswd field
#    Login Tab - Check for uppercase alphabet in Pswd field
#    Login Tab - Clear Pswd field
#    Login Tab - Check for lowercase alphabet in Pswd field
#    Login Tab - Clear Pswd field
#    Login Tab - Check for uppercase & lowercase alphabet in Pswd field
#    Login Tab - Clear Pswd field
#    Login Tab - Check for special character in Pswd field
#    Login Tab - Clear Pswd field
#
#Login Tab - Login Flow Test
#    Login Tab - One of the mandatory field is not filled, click login
#    Login Tab - All mandatory field is not filled, click login
#    Login Tab - Invalid email input, click login
#    Login Tab - Unregistered email input, click login
#    Login Tab - Invalid password input, click login
#    Login Tab - Check for Pswd limit in Pswd Field
#    Login Tab - Valid credential, click login
#
#Login Tab - Logout and return to Homepage
#    Click User Avatar and sidebar should appear
#    Click logout and check header component
#    Return to Homepage
#
#Close Website
#    Close Browser












