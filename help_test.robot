*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary
Resource            variable.robot
Resource            header_test.robot

*** Keywords ***
Scroll to Top
    sleep                                           2
    execute javascript                              window.scrollTo(0,0)
    sleep                                           2
Scroll to Feedback section
    sleep                                           2
    execute javascript                              window.scrollTo(0,850)
    sleep                                           2
Scroll to Textfield section
    sleep                                           2
    execute javascript                              window.scrollTo(0,1300)
    sleep                                           2
# Dropdown component test ----------------------------------------------------------------------------------------------
Click the dropdown button, click again to close
    page should contain element                     ${faq_1}
    click element                                   ${faq_1}
    sleep                                           2
    page should contain element                     ${faq_1dd}
    sleep                                           2
    click element                                   ${faq_1}
    sleep                                           2
Click more than one dropdown button, click again to close
    # FAQ 1
    page should contain element                     ${faq_1}
    click element                                   ${faq_1}
    sleep                                           2
    page should contain element                     ${faq_1dd}
    sleep                                           2
    # FAQ 2
    page should contain element                     ${faq_2}
    click element                                   ${faq_2}
    sleep                                           2
    page should contain element                     ${faq_2dd}
    sleep                                           2
    # FAQ 3
    page should contain element                     ${faq_3}
    click element                                   ${faq_3}
    sleep                                           2
    page should contain element                     ${faq_3dd}
    sleep                                           2
    # FAQ 4
    execute javascript                              window.scrollTo(0,500)
    sleep                                           2
    page should contain element                     ${faq_4}
    click element                                   ${faq_4}
    sleep                                           2
    page should contain element                     ${faq_4dd}
    sleep                                           2
    # FAQ 5
    page should contain element                     ${faq_5}
    click element                                   ${faq_5}
    sleep                                           2
    page should contain element                     ${faq_5dd}
    sleep                                           2
    execute javascript                              window.scrollTo(0,0)
    sleep                                           2
    click element                                   ${faq_1}
    sleep                                           2
    click element                                   ${faq_2}
    sleep                                           2
    click element                                   ${faq_3}
    sleep                                           2
    click element                                   ${faq_4}
    sleep                                           2
    click element                                   ${faq_5}
    sleep                                           2
# First rating component -----------------------------------------------------------------------------------------------
Click the first rating component from rate 1 to rate 5
    page should contain element                     ${first_rate_1}
    click element                                   ${first_rate_1}
    sleep                                           1
    page should contain element                     ${first_rate_2}
    click element                                   ${first_rate_2}
    sleep                                           1
    page should contain element                     ${first_rate_3}
    click element                                   ${first_rate_3}
    sleep                                           1
    page should contain element                     ${first_rate_4}
    click element                                   ${first_rate_4}
    sleep                                           1
    page should contain element                     ${first_rate_5}
    click element                                   ${first_rate_5}
    sleep                                           1
Click the first rating component again to unrate
    page should contain element                     ${first_rate_1}
    click element                                   ${first_rate_1}
    sleep                                           1
    click element                                   ${first_rate_1}
    sleep                                           1
    page should contain element                     ${first_rate_2}
    click element                                   ${first_rate_2}
    sleep                                           1
    click element                                   ${first_rate_2}
    sleep                                           1
    page should contain element                     ${first_rate_3}
    click element                                   ${first_rate_3}
    sleep                                           1
    click element                                   ${first_rate_3}
    sleep                                           1
    page should contain element                     ${first_rate_4}
    click element                                   ${first_rate_4}
    sleep                                           1
    click element                                   ${first_rate_4}
    sleep                                           1
    page should contain element                     ${first_rate_5}
    click element                                   ${first_rate_5}
    sleep                                           1
    click element                                   ${first_rate_5}
    sleep                                           1
# Second rating component ----------------------------------------------------------------------------------------------
Click the second rating component from rate 1 to rate 5
    page should contain element                     ${second_rate_1}
    click element                                   ${second_rate_1}
    sleep                                           1
    page should contain element                     ${second_rate_2}
    click element                                   ${second_rate_2}
    sleep                                           1
    page should contain element                     ${second_rate_3}
    click element                                   ${second_rate_3}
    sleep                                           1
    page should contain element                     ${second_rate_4}
    click element                                   ${second_rate_4}
    sleep                                           1
    page should contain element                     ${second_rate_5}
    click element                                   ${second_rate_5}
    sleep                                           1
Click the second rating component again to unrate
    page should contain element                     ${second_rate_1}
    click element                                   ${second_rate_1}
    sleep                                           1
    click element                                   ${second_rate_1}
    sleep                                           1
    page should contain element                     ${second_rate_2}
    click element                                   ${second_rate_2}
    sleep                                           1
    click element                                   ${second_rate_2}
    sleep                                           1
    page should contain element                     ${second_rate_3}
    click element                                   ${second_rate_3}
    sleep                                           1
    click element                                   ${second_rate_3}
    sleep                                           1
    page should contain element                     ${second_rate_4}
    click element                                   ${second_rate_4}
    sleep                                           1
    click element                                   ${second_rate_4}
    sleep                                           1
    page should contain element                     ${second_rate_5}
    click element                                   ${second_rate_5}
    sleep                                           1
    click element                                   ${second_rate_5}
    sleep                                           1
# Like/Dislike component -----------------------------------------------------------------------------------------------
Click thumbs up, color to green
    page should contain element                     ${thumb_up}
    click element                                   ${thumb_up}
    sleep                                           1
    page should contain element                     ${green_thumb}
    sleep                                           1
Click thumbs up again, color default
    page should contain element                     ${green_thumb}
    click element                                   ${green_thumb}
    sleep                                           1
    page should not contain element                 ${green_thumb}
    page should contain element                     ${thumb_up}
    sleep                                           1
Click thumbs down, color to red
    page should contain element                     ${thumb_dn}
    click element                                   ${thumb_dn}
    sleep                                           1
    page should contain element                     ${red_thumb}
    sleep                                           1
Click thumbs down again, color default
    page should contain element                     ${red_thumb}
    click element                                   ${red_thumb}
    sleep                                           1
    page should not contain element                 ${red_thumb}
    page should contain element                     ${thumb_dn}
    sleep                                           1
# Textfield component test ---------------------------------------------------------------------------------------------
Valid feedback input
    page should contain element                     ${textfield}
    click element                                   ${textfield}
    input text                                      ${textfield}           text=This is a testing automated by Robot Framework, Selenium.
    sleep                                           2
Clear text field
    press keys                                      ${textfield}    CTRL+A    DELETE
Check Delete button f(x) - text field
    press keys                                      ${textfield}    CTRL+A    DELETE
Check Backspace button f(x) - text field
    press keys                                      ${textfield}    CTRL+A    BACKSPACE
Check Copy f(x) - text field
    press keys                                      ${textfield}    CTRL+A    CTRL+C
Check Paste f(x) - text field
    press keys                                      ${textfield}    CTRL+V
Check for numeric character in text field
    page should contain element                     ${textfield}
    click element                                   ${textfield}
    input text                                      ${textfield}           text=12345
    sleep                                           2
Check for alpha & numeric character in text field
    page should contain element                     ${textfield}
    click element                                   ${textfield}
    input text                                      ${textfield}           text=abc123
    sleep                                           2
Check for uppercase alphabet in text field
    page should contain element                     ${textfield}
    click element                                   ${textfield}
    input text                                      ${textfield}           text=ABCDEFG
    sleep                                           2
Check for lowercase alphabet in text field
    page should contain element                     ${textfield}
    click element                                   ${textfield}
    input text                                      ${textfield}           text=abcdefg
    sleep                                           2
Check for uppercase & lowercase alphabet in text field
    page should contain element                     ${textfield}
    click element                                   ${textfield}
    input text                                      ${textfield}           text=abcDEFG
    sleep                                           2
# Feedback Submit flow test
Rating clicked and valid input, click submit
    sleep                                           2
    execute javascript                              window.scrollTo(0,850)
    sleep                                           2
    page should contain element                     ${first_rate_5}
    click element                                   ${first_rate_5}
    sleep                                           1
    page should contain element                     ${second_rate_5}
    click element                                   ${second_rate_5}
    sleep                                           1
    page should contain element                     ${thumb_up}
    click element                                   ${thumb_up}
    sleep                                           1
    page should contain element                     ${green_thumb}
    sleep                                           1
    execute javascript                              window.scrollTo(0,0)
    sleep                                           2
    execute javascript                              window.scrollTo(0,1300)
    sleep                                           2
    page should contain element                     ${textfield}
    click element                                   ${textfield}
    input text                                      ${textfield}           text=This is a testing automated by Robot Framework, Selenium.
    sleep                                           2
    page should contain element                     ${submit_btn}
    click element                                   ${submit_btn}
    sleep                                           2
    page should contain element                     ${popup_msg}
    sleep                                           1
    execute javascript                              window.scrollTo(0,0)
    sleep                                           2
No rating and valid input, click submit
    sleep                                           2
    execute javascript                              window.scrollTo(0,850)
    sleep                                           1
    page should contain element                     ${thumb_up}
    click element                                   ${thumb_up}
    sleep                                           1
    page should contain element                     ${green_thumb}
    sleep                                           1
    execute javascript                              window.scrollTo(0,0)
    sleep                                           2
    execute javascript                              window.scrollTo(0,1300)
    sleep                                           2
    page should contain element                     ${textfield}
    click element                                   ${textfield}
    input text                                      ${textfield}           text=This is a testing automated by Robot Framework, Selenium.
    sleep                                           2
    page should contain element                     ${submit_btn}
    click element                                   ${submit_btn}
    sleep                                           2
    page should contain element                     ${error_msg}
    sleep                                           1
    execute javascript                              window.scrollTo(0,0)
    sleep                                           2
    reload Page
Rating clicked and no input, click submit
    sleep                                           2
    execute javascript                              window.scrollTo(0,850)
    sleep                                           2
    page should contain element                     ${first_rate_5}
    click element                                   ${first_rate_5}
    sleep                                           1
    page should contain element                     ${second_rate_5}
    click element                                   ${second_rate_5}
    sleep                                           1
    execute javascript                              window.scrollTo(0,0)
    sleep                                           2
    execute javascript                              window.scrollTo(0,1300)
    sleep                                           1
    page should contain element                     ${submit_btn}
    click element                                   ${submit_btn}
    sleep                                           2
    page should contain element                     ${popup_msg}
    sleep                                           1
    execute javascript                              window.scrollTo(0,0)
    sleep                                           2

# Below Test Cases are for this particular page Component Testing -----------------------------------------------------
# Uncomment Test to test the component --------------------------------------------------------------------------------
#
#*** Test Cases ***
#Open Website
#    Open Browser                            https://cryptonite5.netlify.app/  chrome
#    maximize browser window
#Help Page Test
#    Check header component
#    Return to Homepage
#    Click on the Crypto text and Navigate to Help Page
#Dropdown Component Test
#    Click the dropdown button, click again to close
#    Click more than one dropdown button, click again to close
#First Rating Component Test
#    Scroll to Feedback section
#    Click the first rating component from rate 1 to rate 5
#    Click the first rating component again to unrate
#Second Rating Component Test
#    Click the second rating component from rate 1 to rate 5
#    Click the second rating component again to unrate
#Like/Dislike Component
#    Scroll to Feedback section
#    Click thumbs up, color to green
#    Click thumbs up again, color default
#    Click thumbs down, color to red
#    Click thumbs down again, color default
#    Scroll to Top
#Textfield Component
#    Scroll to Textfield section
#    Valid feedback input
#    Check Delete button f(x) - text field
#    Valid feedback input
#    Check Backspace button f(x) - text field
#    Valid feedback input
#    Check Copy f(x) - text field
#    Clear text field
#    Check Paste f(x) - text field
#    Clear text field
#
#    Check for numeric character in text field
#    Clear text field
#    Check for alpha & numeric character in text field
#    Clear text field
#    Check for uppercase alphabet in text field
#    Clear text field
#    Check for lowercase alphabet in text field
#    Clear text field
#    Check for uppercase & lowercase alphabet in text field
#    Clear text field
#Feedback Submit Flow Test
#    Rating clicked and valid input, click submit
#    No rating and valid input, click submit
#    Rating clicked and no input, click submit
#Close Website
#    Close Browser