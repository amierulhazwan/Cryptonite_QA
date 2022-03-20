*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary
Resource            variable.robot
Resource            header_test.robot
Resource            footer_test.robot
Resource            sidebar_test.robot
Resource            coin_test.robot

*** Keywords ***
Click Forex pair dropdown button
    page should contain element             ${forex_tab}
    click element                           ${forex_tab}
    sleep                                   2
Check Forex pair dropdown component
    page should contain element             ${forex_tab_dd}
    sleep                                   2
Click one of the Forex pair and check component
    page should contain element             ${dd_1item}
    click element                           ${dd_1item}
    sleep                                   2
    page should not contain element         ${forex_tab_dd}

# Below Test Cases are for this particular page Component Testing -----------------------------------------------------
# Uncomment Test to test the component --------------------------------------------------------------------------------

#*** Test Cases ***
#Open Website
#    Open Browser                           https://cryptonite5.netlify.app/  chrome
#    maximize browser window
#Forex Component Test
#    Check header component
#    Click on the Crypto text and Navigate to Forex Page
#    Click Forex pair dropdown button
#    Check Forex pair dropdown component
#    Click one of the Forex pair and check component
#Close Website
#    Close Browser







