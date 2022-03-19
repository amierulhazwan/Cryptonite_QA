*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary
Resource            variable.robot
Resource            header_test.robot

*** Keywords ***
Click on the Footer logo and Navigate to Homepage
    wait until page contains element        ${footer}
    sleep                                   2
    execute javascript                      window.scrollTo(0,2000)
    sleep                                   2
    wait until page contains element        ${logo_footer}
    click element                           ${logo_footer}
    location should be                      https://cryptonite5.netlify.app/
    sleep                                   2
Click on the About Us text on the Footer and Navigate to About Us page
    wait until page contains element        ${footer}
    sleep                                   2
    execute javascript                      window.scrollTo(0,2000)
    sleep                                   2
    wait until page contains element        ${about_footer}
    Click element                           ${about_footer}
    location should be                      https://cryptonite5.netlify.app/about
    sleep                                   2
Click on the Contact Us text on the Footer and Navigate to Help page
    wait until page contains element        ${footer}
    sleep                                   2
    execute javascript                      window.scrollTo(0,2000)
    sleep                                   2
    wait until page contains element        ${contact_footer}
    click element                           ${contact_footer}
    location should be                      https://cryptonite5.netlify.app/help
    sleep                                   2
Click on the Help text on the Footer and Navigate to Help page
    wait until page contains element        ${footer}
    sleep                                   2
    execute javascript                      window.scrollTo(0,2000)
    sleep                                   2
    wait until page contains element        ${help_footer}
    click element                           ${help_footer}
    location should be                      https://cryptonite5.netlify.app/help
    sleep                                   2
Click on the Search Cryptocurrency text on the Footer and Navigate to Crypto page
    wait until page contains element        ${footer}
    sleep                                   2
    execute javascript                      window.scrollTo(0,2000)
    sleep                                   2
    wait until page contains element        ${search_footer}
    click element                           ${search_footer}
    location should be                      https://cryptonite5.netlify.app/crypto
    sleep                                   2
Click on the Trending Market text on the Footer and Navigate to Homepage
    wait until page contains element        ${footer}
    sleep                                   2
    execute javascript                      window.scrollTo(0,2000)
    sleep                                   2
    wait until page contains element        ${trending_footer}
    click element                           ${trending_footer}
    location should be                      https://cryptonite5.netlify.app/
    sleep                                   2
Click on the Promotional text on the Footer and Navigate to Landing page
    wait until page contains element        ${footer}
    sleep                                   2
    execute javascript                      window.scrollTo(0,2000)
    sleep                                   2
    wait until page contains element        ${promo_footer}
    click element                           ${promo_footer}
    location should be                      https://cryptonite5.netlify.app/landing
    sleep                                   2

## Below Test Cases are for this particular page Component Testing -----------------------------------------------------
## Uncomment Test to test the component --------------------------------------------------------------------------------

#*** Test Cases ***
#Open Website
#    Open Browser        https://cryptonite5.netlify.app/  chrome
#    maximize browser window
#Footer Navigation Test
#    Click on the Footer logo and Navigate to Homepage
#    Return to Homepage
#    Click on the About Us text on the Footer and Navigate to About Us page
#    Return to Homepage
#    Click on the Contact Us text on the Footer and Navigate to Help page
#    Return to Homepage
#    Click on the Help text on the Footer and Navigate to Help page
#    Return to Homepage
#    Click on the Search Cryptocurrency text on the Footer and Navigate to Crypto page
#    Return to Homepage
#    Click on the Trending Market text on the Footer and Navigate to Homepage
#    Return to Homepage
#    Click on the Promotional text on the Footer and Navigate to Landing page
#    Return to Homepage
#Close Website
#    Close Browser