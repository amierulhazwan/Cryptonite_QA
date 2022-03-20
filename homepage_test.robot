*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary
Resource            variable.robot
Resource            header_test.robot

*** Keywords ***
Click the coin in the table and navigate to respective coin page from homepage
    sleep                                           2
    execute javascript                              window.scrollTo(0,1000)
    sleep                                           2
    click element                                   ${table_row1_hp}
    sleep                                           2
    location should be                              https://cryptonite5.netlify.app/coins/bitcoin
    sleep                                           5

# Below Test Cases are for this particular page Component Testing -----------------------------------------------------
# Uncomment Test to test the component --------------------------------------------------------------------------------

#*** Test Cases ***
#Open Website
#    Open Browser                            https://cryptonite5.netlify.app/  chrome
#    maximize browser window
#Homepage Test
#    Return to Homepage
#    Click the coin in the table and navigate to respective coin page from homepage
#    Return to Homepage
#Close Website
#    Close Browser