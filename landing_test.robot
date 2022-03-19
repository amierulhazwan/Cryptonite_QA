*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary
Resource            variable.robot
Resource            header_test.robot
Resource            footer_test.robot
Resource            sidebar_test.robot
Resource            sign_up.robot
Resource            login.robot

*** Keywords ***
Click on the first Conquer the Market button
    click element                           ${first_btn}
    location should be                      https://cryptonite5.netlify.app/
    sleep                                   2
Click on the second Conquer the Market button
    click element                           ${sec_btn}
    location should be                      https://cryptonite5.netlify.app/
    sleep                                   2
Click on the third Conquer the Market button
    sleep                                   2
    execute javascript                      window.scrollTo(0,1500)
    sleep                                   2
    click element                           ${third_btn}
    location should be                      https://cryptonite5.netlify.app/
    sleep                                   2

## Below Test Cases are for this particular page Component Testing -----------------------------------------------------
## Uncomment Test to test the component --------------------------------------------------------------------------------

#*** Test Cases ***
#Open Website
#    Open Browser                            https://cryptonite5.netlify.app/  chrome
#    maximize browser window
#
#Landing Page Testing
#    Return to Homepage
#    Click on the Promotional text on the Footer and Navigate to Landing page
#    Click on the first Conquer the Market button
#    Click on the Promotional text on the Footer and Navigate to Landing page
#    Click on the second Conquer the Market button
#    Click on the Promotional text on the Footer and Navigate to Landing page
#    Click on the third Conquer the Market button
#
#Close Website
#    Close Browser