*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary
Resource            variable.robot
Resource            header_test.robot

*** Keywords ***
Click the coin in the table and navigate to respective coin page from Crypto
    sleep                                           2
    execute javascript                              window.scrollTo(0,1000)
    sleep                                           2
    click element                                   ${table_row1_cr}
    sleep                                           2
    location should be                              https://cryptonite5.netlify.app/coins/bitcoin
    sleep                                           5
# Search Field Component -----------------------------------------------------------------------------------------------
Valid Search Input
    page should contain element                     ${search_field}
    click element                                   ${search_field}
    input text                                      ${search_field}           text=BTC
    sleep                                           2
    textfield should contain                        ${search_field}           BTC
    page should contain element                     //*[@class="MuiTableContainer-root" and contains (text(),BTC)]
Clear Search field
    press keys                                      ${search_field}    CTRL+A    DELETE
Check Delete button f(x) - Search field
    press keys                                      ${search_field}    CTRL+A    DELETE
Check Backspace button f(x) - Search field
    press keys                                      ${search_field}    CTRL+A    BACKSPACE
Check Copy f(x) - Search field
    press keys                                      ${search_field}    CTRL+A    CTRL+C
Check Paste f(x) - Search field
    press keys                                      ${search_field}    CTRL+V
Scroll to search field component
    sleep                                           2
    execute javascript                              window.scrollTo(0,1000)
    sleep                                           2
    page should contain element                     ${search_field}
Check for numeric character in search field
    page should contain element                     ${search_field}
    click element                                   ${search_field}
    Run Keyword And Ignore Error    input text      ${search_field}           text=12345
    sleep                                           2
    textfield should contain                        ${search_field}           ${EMPTY}
Check for alpha & numeric character in search field
    page should contain element                     ${search_field}
    click element                                   ${search_field}
    Run Keyword And Ignore Error    input text      ${search_field}           text=abc123
    sleep                                           2
    textfield should contain                        ${search_field}           abc
Check for uppercase alphabet in search field
    page should contain element                     ${search_field}
    click element                                   ${search_field}
    input text                                      ${search_field}           text=ABCDEFG
    sleep                                           2
    textfield should contain                        ${search_field}           ABCDEFG
Check for lowercase alphabet in search field
    page should contain element                     ${search_field}
    click element                                   ${search_field}
    input text                                      ${search_field}           text=abcdefg
    sleep                                           2
    textfield should contain                        ${search_field}           abcdefg
Check for uppercase & lowercase alphabet in search field
    page should contain element                     ${search_field}
    click element                                   ${search_field}
    input text                                      ${search_field}           text=abcDEFG
    sleep                                           2
    textfield should contain                        ${search_field}           abcDEFG
# Search Result Component ----------------------------------------------------------------------------------------------
Check for invalid input
    page should contain element                     ${search_field}
    click element                                   ${search_field}
    input text                                      ${search_field}           text=XXX
    sleep                                           2
    textfield should contain                        ${search_field}           XXX
    page should contain element                     //*[text()="No coins match your search!"]
Check for valid input from page 1 Crypto Table
    page should contain element                     ${search_field}
    click element                                   ${search_field}
    input text                                      ${search_field}           text=BTC
    sleep                                           2
    textfield should contain                        ${search_field}           BTC
    page should contain element                     //*[@class="MuiTableContainer-root" and contains (text(),BTC)]
Check for valid input from page 2 Crypto Table
    page should contain element                     ${search_field}
    click element                                   ${search_field}
    input text                                      ${search_field}           text=POLKADOT
    sleep                                           2
    textfield should contain                        ${search_field}           POLKADOT
    page should contain element                     //*[@class="MuiTableContainer-root" and contains (text(),POLKADOT)]

# Below Test Cases are for this particular page Component Testing -----------------------------------------------------
# Uncomment Test to test the component --------------------------------------------------------------------------------

#*** Test Cases ***
#Open Website
#    Open Browser                            https://cryptonite5.netlify.app/  chrome
#    maximize browser window
#Crypto Page Test
#    Return to Homepage
#    Check header component
#    Click on the Crypto text and Navigate to Crypto Page
#    Click the coin in the table and navigate to respective coin page from Crypto
#    Click on the Crypto text and Navigate to Crypto Page
#Search Field Component Test
#    Scroll to search field component
#    Valid Search Input
#    Check Delete button f(x) - Search field
#    Valid Search Input
#    Check Backspace button f(x) - Search field
#    Valid Search Input
#    Check Copy f(x) - Search field
#    Clear Search field
#    Check Paste f(x) - Search field
#    Clear Search field
#
#    Check for numeric character in search field
#    Clear Search field
#    Check for alpha & numeric character in search field
#    Clear Search field
#    Check for uppercase alphabet in search field
#    Clear Search field
#    Check for lowercase alphabet in search field
#    Clear Search field
#    Check for uppercase & lowercase alphabet in search field
#    Clear Search field
#Search Result Test
#    Check for invalid input
#    Clear Search field
#    Check for valid input from page 1 Crypto Table
#    Clear Search field
#    Check for valid input from page 2 Crypto Table
#    Clear Search field
#Close Website
#    Close Browser