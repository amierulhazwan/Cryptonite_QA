*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary
Resource            variable.robot
Resource            header_test.robot
Resource            homepage_test.robot
Resource            sidebar_test.robot
Resource            crypto_test.robot

*** Keywords ***
Not logged in and check page component
    page should not contain element         ${fav_btn}
Logged in and check page component
    page should contain element             ${fav_btn}
Click Add to Favourite button and check the component
    sleep                                   2
    page should contain element             ${green_btn}
    click element                           ${fav_btn}
    sleep                                   2
    page should contain element             ${red_btn}
    sleep                                   2
Click Remove from Favourite button and check the component
    sleep                                   2
    page should contain element             ${red_btn}
    click element                           ${fav_btn}
    sleep                                   2
    page should contain element             ${green_btn}
    sleep                                   2

## Below Test Cases are for this particular page Component Testing -----------------------------------------------------
## Uncomment Test to test the component --------------------------------------------------------------------------------

#*** Test Cases ***
#Open Website
#    Open Browser                            https://cryptonite5.netlify.app/        chrome
#    maximize browser window
#Coin Page Component Test
#    Return to Homepage
#    Click on the Crypto text and Navigate to Crypto Page
#    Click the coin in the table and navigate to respective coin page from Crypto
#    Not logged in and check page component
#    Click on the login button
#    Click on the login tab
#    Login Account
#    Logged in and check page component
#    Click Add to Favourite button and check the component
#    Click User Avatar and sidebar should appear
#    Check added coin in the favourite list
#    Close sidebar
#    Logged in and check page component
#    Click Remove from Favourite button and check the component
#    Click User Avatar and sidebar should appear
#    Check removed coin in the favourite list
#    Close sidebar
#    Click User Avatar and sidebar should appear
#    Click logout and check header component
#Close Website
#    Close Browser



















