*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary
Resource            variable.robot
Resource            header_test.robot
Resource            sidebar_test.robot
Resource            coin_test.robot

*** Keywords ***
Sign Up Tab - Check if input erase when tab is changed
    page should contain element                     ${log_sign_tab}
    page should contain element                     ${log_tab}
    click element                                   ${log_tab}
    sleep                                           2
    page should contain element                     ${sign_tab}
    click element                                   ${sign_tab}
    sleep                                           2
    textfield should contain                        ${email_field}              ${EMPTY}
    textfield should contain                        ${pswd_field}               ${EMPTY}
    textfield should contain                        ${conf_field}               ${EMPTY}
    sleep                                           2

# Email Field Component ------------------------------------------------------------------------------------------------
Sign Up Tab - Clear Email field
    press keys                                      ${email_field}    CTRL+A    DELETE
Sign Up Tab - Check Delete button f(x) - Email field
    press keys                                      ${email_field}    CTRL+A    DELETE
Sign Up Tab - Check Backspace button f(x) - Email field
    press keys                                      ${email_field}    CTRL+A    BACKSPACE
Sign Up Tab - Check Copy f(x) - Email field
    press keys                                      ${email_field}    CTRL+A    CTRL+C
Sign Up Tab - Check Paste f(x) - Email field
    press keys                                      ${email_field}    CTRL+V
Sign Up Tab - Valid email in Email Field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=emailtest@test.com.my
    sleep                                           2
    page should contain element                     //*[@value="emailtest@test.com.my" and contains (@class, "MuiInputBase-input MuiFilledInput-input")]
Sign Up Tab - Check for alpha & numeric character in Email field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=abc123
    sleep                                           2
    page should contain element                     //*[@value="abc123" and contains (@class, "MuiInputBase-input MuiFilledInput-input")]
Sign Up Tab - Check for uppercase alphabet in Email field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=ABCDEFG
    sleep                                           2
    page should contain element                     //*[@value="ABCDEFG" and contains (@class, "MuiInputBase-input MuiFilledInput-input")]
Sign Up Tab - Check for lowercase alphabet in Email field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=abcdefg
    sleep                                           2
    page should contain element                     //*[@value="abcdefg" and contains (@class, "MuiInputBase-input MuiFilledInput-input")]
Sign Up Tab - Check for uppercase & lowercase alphabet in Email field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=abcDEFG
    sleep                                           2
    page should contain element                     //*[@value="abcDEFG" and contains (@class, "MuiInputBase-input MuiFilledInput-input")]
Sign Up Tab - Check for special character in Email field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=@
    sleep                                           2
    page should contain element                     //*[@value="@" and contains (@class, "MuiInputBase-input MuiFilledInput-input")]

# Password Field Component ---------------------------------------------------------------------------------------------
Sign Up Tab - Clear Pswd field
    press keys                                      ${pswd_field}           CTRL+A    DELETE
Sign Up Tab - Check Delete button f(x) - Pswd field
    press keys                                      ${pswd_field}           CTRL+A    DELETE
Sign Up Tab - Check Backspace button f(x) - Pswd field
    press keys                                      ${pswd_field}           CTRL+A    BACKSPACE
Sign Up Tab - Check Copy f(x) - Pswd field
    press keys                                      ${pswd_field}           CTRL+A    CTRL+C
Sign Up Tab - Check Paste f(x) - Pswd field
    press keys                                      ${pswd_field}           CTRL+V
Sign Up Tab - Valid Pswd in Pswd Field
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc123
    sleep                                           2
    textfield should contain                        ${pswd_field}           abc123
Sign Up Tab - Check for alpha & numeric character in Pswd field
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc123
    sleep                                           2
    textfield should contain                        ${pswd_field}           abc123
Sign Up Tab - Check for uppercase alphabet in Pswd field
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=ABCDEFG
    sleep                                           2
    textfield should contain                        ${pswd_field}           ABCDEFG
Sign Up Tab - Check for lowercase alphabet in Pswd field
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abcdefg
    sleep                                           2
    textfield should contain                        ${pswd_field}           abcdefg
Sign Up Tab - Check for uppercase & lowercase alphabet in Pswd field
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abcDEFG
    sleep                                           2
    textfield should contain                        ${pswd_field}           abcDEFG
Sign Up Tab - Check for special character in Pswd field
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=@
    sleep                                           2
    textfield should contain                        ${pswd_field}           @

# Conf Password Component ----------------------------------------------------------------------------------------------
Sign Up Tab - Clear Conf field
    press keys                                      ${conf_field}           CTRL+A    DELETE
Sign Up Tab - Check Delete button f(x) - Conf field
    press keys                                      ${conf_field}           CTRL+A    DELETE
Sign Up Tab - Check Backspace button f(x) - Conf field
    press keys                                      ${conf_field}           CTRL+A    BACKSPACE
Sign Up Tab - Check Copy f(x) - Conf field
    press keys                                      ${conf_field}           CTRL+A    CTRL+C
Sign Up Tab - Check Paste f(x) - Conf field
    press keys                                      ${conf_field}           CTRL+V
Sign Up Tab - Valid Pswd in Conf Field
    page should contain element                     ${conf_field}
    click element                                   ${conf_field}
    input text                                      ${conf_field}           text=abc123
    sleep                                           2
    textfield should contain                        ${conf_field}           abc123
Sign Up Tab - Check for alpha & numeric character in Conf field
    page should contain element                     ${conf_field}
    click element                                   ${conf_field}
    input text                                      ${conf_field}           text=abc123
    sleep                                           2
    textfield should contain                        ${conf_field}           abc123
Sign Up Tab - Check for uppercase alphabet in Conf field
    page should contain element                     ${conf_field}
    click element                                   ${conf_field}
    input text                                      ${conf_field}           text=ABCDEFG
    sleep                                           2
    textfield should contain                        ${conf_field}           ABCDEFG
Sign Up Tab - Check for lowercase alphabet in Conf field
    page should contain element                     ${conf_field}
    click element                                   ${conf_field}
    input text                                      ${conf_field}           text=abcdefg
    sleep                                           2
    textfield should contain                        ${conf_field}           abcdefg
Sign Up Tab - Check for uppercase & lowercase alphabet in Conf field
    page should contain element                     ${conf_field}
    click element                                   ${conf_field}
    input text                                      ${conf_field}           text=abcDEFG
    sleep                                           2
    textfield should contain                        ${conf_field}           abcDEFG
Sign Up Tab - Check for special character in Conf field
    page should contain element                     ${conf_field}
    click element                                   ${conf_field}
    input text                                      ${conf_field}           text=@
    sleep                                           2
    textfield should contain                        ${conf_field}           @

# Sign Up flow test ----------------------------------------------------------------------------------------------------
Sign Up Tab - One of the mandatory field is not filled, click sign up
    # Password field is empty ------------------------------------------------------------------------------------------
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=email@test.com.my
    sleep                                           2
    textfield should contain                        ${pswd_field}            ${EMPTY}
    sleep                                           2
    page should contain element                     ${conf_field}
    click element                                   ${conf_field}
    input text                                      ${conf_field}            text=testPswd
    sleep                                           2
    page should contain element                     ${sign_btn_tab}
    click element                                   ${sign_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE
    press keys                                      ${conf_field}           CTRL+A    DELETE
    sleep                                           2
    # Confirm Password field is empty ----------------------------------------------------------------------------------
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}           text=email@test.com.my
    sleep                                           2
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}            text=testPswd
    sleep                                           2
    textfield should contain                        ${conf_field}            ${EMPTY}
    sleep                                           2
    page should contain element                     ${sign_btn_tab}
    click element                                   ${sign_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE
    press keys                                      ${conf_field}           CTRL+A    DELETE
    sleep                                           2
    # Email field is empty ---------------------------------------------------------------------------------------------
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}            text=testPswd
    sleep                                           2
    page should contain element                     ${conf_field}
    click element                                   ${conf_field}
    input text                                      ${conf_field}            text=testPswd
    sleep                                           2
    textfield should contain                        ${email_field}            ${EMPTY}
    sleep                                           2
    page should contain element                     ${sign_btn_tab}
    click element                                   ${sign_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE
    press keys                                      ${conf_field}           CTRL+A    DELETE
    sleep                                           2
Sign Up Tab - All mandatory field is not filled, click sign up
    textfield should contain                        ${email_field}          ${EMPTY}
    textfield should contain                        ${pswd_field}           ${EMPTY}
    textfield should contain                        ${conf_field}           ${EMPTY}
    sleep                                           2
    page should contain element                     ${sign_btn_tab}
    click element                                   ${sign_btn_tab}
    sleep                                           2
Sign Up Tab - Invalid email input, click sign up
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}          text=.invalidemail@test.com.my
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc123
    page should contain element                     ${conf_field}
    click element                                   ${conf_field}
    input text                                      ${conf_field}           text=abc123
    sleep                                           2
    page should contain element                     ${sign_btn_tab}
    click element                                   ${sign_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE
    press keys                                      ${conf_field}           CTRL+A    DELETE
Sign Up Tab - Used email input, click sign up
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}          text=emailtest@test.com.my
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc123
    page should contain element                     ${conf_field}
    click element                                   ${conf_field}
    input text                                      ${conf_field}           text=abc123
    sleep                                           2
    page should contain element                     ${sign_btn_tab}
    click element                                   ${sign_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE
    press keys                                      ${conf_field}           CTRL+A    DELETE
Sign Up Tab - Different password in the confirm field, click sign up
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}          text=emailtest@test.com.my
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc123
    page should contain element                     ${conf_field}
    click element                                   ${conf_field}
    input text                                      ${conf_field}           text=123abc
    sleep                                           2
    page should contain element                     ${sign_btn_tab}
    click element                                   ${sign_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE
    press keys                                      ${conf_field}           CTRL+A    DELETE
Sign Up Tab - Check for Pswd limit in Pswd Field
    page should contain element                     ${email_field}
    click element                                   ${email_field}
    input text                                      ${email_field}          text=emailtest@test.com.my
    page should contain element                     ${pswd_field}
    click element                                   ${pswd_field}
    input text                                      ${pswd_field}           text=abc
    page should contain element                     ${conf_field}
    click element                                   ${conf_field}
    input text                                      ${conf_field}           text=abc
    sleep                                           2
    page should contain element                     ${sign_btn_tab}
    click element                                   ${sign_btn_tab}
    sleep                                           2
    page should contain element                     ${error_msg}
    press keys                                      ${email_field}          CTRL+A    DELETE
    press keys                                      ${pswd_field}           CTRL+A    DELETE
    press keys                                      ${conf_field}           CTRL+A    DELETE

# Click Sign Up --------------------------------------------------------------------------------------------------------
Sign Up Tab - Click sign-up btn
    page should contain element                     ${sign_btn_tab}
    click element                                   ${sign_btn_tab}

# Below Test Cases are for this particular page Component Testing -----------------------------------------------------
# Uncomment Test to test the component --------------------------------------------------------------------------------

#*** Test Cases ***
#Open Website
#    Open Browser                           https://cryptonite5.netlify.app/  chrome
#    maximize browser window
#Sign Up Tab Test
#    Check header component
#    Click on the login button
#    Click on the sign-up tab
#Sign Up Tab - Check for input when click another tab
#    Sign Up Tab - Valid email in Email Field
#    Sign Up Tab - Valid Pswd in Pswd Field
#    Sign Up Tab - Valid Pswd in Conf Field
#    Sign Up Tab - Check if input erase when tab is changed
#Sign Up Tab - Email field component
#    Sign Up Tab - Valid email in Email Field
#    Sign Up Tab - Check Delete button f(x) - Email field
#    Sign Up Tab - Valid email in Email Field
#    Sign Up Tab - Check Backspace button f(x) - Email field
#    Sign Up Tab - Valid email in Email Field
#    Sign Up Tab - Check Copy f(x) - Email field
#    Sign Up Tab - Clear Email field
#    Sign Up Tab - Check Paste f(x) - Email field
#    Sign Up Tab - Clear Email field
#
#    Sign Up Tab - Check for alpha & numeric character in Email field
#    Sign Up Tab - Clear Email field
#    Sign Up Tab - Check for uppercase alphabet in Email field
#    Sign Up Tab - Clear Email field
#    Sign Up Tab - Check for lowercase alphabet in Email field
#    Sign Up Tab - Clear Email field
#    Sign Up Tab - Check for uppercase & lowercase alphabet in Email field
#    Sign Up Tab - Clear Email field
#    Sign Up Tab - Check for special character in Email field
#    Sign Up Tab - Clear Email field
#
#Sign Up Tab - Password field component
#    Sign Up Tab - Valid Pswd in Pswd Field
#    Sign Up Tab - Check Delete button f(x) - Pswd field
#    Sign Up Tab - Valid Pswd in Pswd Field
#    Sign Up Tab - Check Backspace button f(x) - Pswd field
#    Sign Up Tab - Valid Pswd in Pswd Field
#    Sign Up Tab - Check Copy f(x) - Pswd field
#    Sign Up Tab - Clear Pswd field
#    Sign Up Tab - Check Paste f(x) - Pswd field
#    Sign Up Tab - Clear Pswd field
#
#    Sign Up Tab - Check for alpha & numeric character in Pswd field
#    Sign Up Tab - Clear Pswd field
#    Sign Up Tab - Check for uppercase alphabet in Pswd field
#    Sign Up Tab - Clear Pswd field
#    Sign Up Tab - Check for lowercase alphabet in Pswd field
#    Sign Up Tab - Clear Pswd field
#    Sign Up Tab - Check for uppercase & lowercase alphabet in Pswd field
#    Sign Up Tab - Clear Pswd field
#    Sign Up Tab - Check for special character in Pswd field
#    Sign Up Tab - Clear Pswd field
#
#Sign Up Tab - Conf field component
#    Sign Up Tab - Valid Pswd in Conf Field
#    Sign Up Tab - Check Delete button f(x) - Conf field
#    Sign Up Tab - Valid Pswd in Conf Field
#    Sign Up Tab - Check Backspace button f(x) - Conf field
#    Sign Up Tab - Valid Pswd in Conf Field
#    Sign Up Tab - Check Copy f(x) - Conf field
#    Sign Up Tab - Clear Conf field
#    Sign Up Tab - Check Paste f(x) - Conf field
#    Sign Up Tab - Clear Conf field
#
#    Sign Up Tab - Check for alpha & numeric character in Conf field
#    Sign Up Tab - Clear Conf field
#    Sign Up Tab - Check for uppercase alphabet in Conf field
#    Sign Up Tab - Clear Conf field
#    Sign Up Tab - Check for lowercase alphabet in Conf field
#    Sign Up Tab - Clear Conf field
#    Sign Up Tab - Check for uppercase & lowercase alphabet in Conf field
#    Sign Up Tab - Clear Conf field
#    Sign Up Tab - Check for special character in Conf field
#    Sign Up Tab - Clear Conf field
#
#Sign Up Tab - Sign Up Flow Test
#    Sign Up Tab - One of the mandatory field is not filled, click sign up
#    Sign Up Tab - All mandatory field is not filled, click sign up
#    Sign Up Tab - Invalid email input, click sign up
#    Sign Up Tab - Used email input, click sign up
#    Sign Up Tab - Different password in the confirm field, click sign up
#    Sign Up Tab - Check for Pswd limit in Pswd Field
#
#Close Website
#    Close Browser











