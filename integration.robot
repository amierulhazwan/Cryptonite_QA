*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary
Resource            variable.robot
Resource            header_test.robot
Resource            footer_test.robot
Resource            crypto_test.robot
Resource            coin_test.robot

# Below are the test cases for integration testing ---------------------------------------------------------------------

*** Test Cases ***
Open Website
    Open Browser                            https://cryptonite5.netlify.app/  chrome
    maximize browser window
Integration Testing - Header Component
    Check header component
    Return to Homepage
    Click on the Logo and Navigate to Homepage
    Return to Homepage
    Click on the Crypto text and Navigate to Crypto Page
    Return to Homepage
    Click on the Crypto text and Navigate to Forex Page
    Return to Homepage
    Click on the Crypto text and Navigate to About Us Page
    Return to Homepage
    Click on the Crypto text and Navigate to Help Page
    Return to Homepage
    Click on the login button
    Click on the login tab
    Login and check header component
    Click User Avatar and sidebar should appear
    Click logout and check header component

Integration Testing - Footer Component
    Return to Homepage
    Click on the Footer logo and Navigate to Homepage
    Return to Homepage
    Click on the About Us text on the Footer and Navigate to About Us page
    Return to Homepage
    Click on the Contact Us text on the Footer and Navigate to Help page
    Return to Homepage
    Click on the Help text on the Footer and Navigate to Help page
    Return to Homepage
    Click on the Search Cryptocurrency text on the Footer and Navigate to Crypto page
    Return to Homepage
    Click on the Trending Market text on the Footer and Navigate to Homepage
    Return to Homepage
    Click on the Promotional text on the Footer and Navigate to Landing page
    Return to Homepage

Integration Testing - Login Component
    Return to Homepage
    Click on the login button
    Click on the login tab
    Login and check header component
    Click User Avatar and sidebar should appear
    Click logout and check header component

Integration Testing - Sidebar Profile Component
    Return to Homepage
    Click on the login button
    Click on the login tab
    Login Account
    Click User Avatar and sidebar should appear
    Check sidebar component
    Close sidebar
    Return to Homepage
    Click on the Crypto text and Navigate to Crypto Page
    Click the coin in the table and navigate to respective coin page from Crypto
    Logged in and check page component
    Click Add to Favourite button and check the component
    Click User Avatar and sidebar should appear
    Check added coin in the favourite list
    Click trash icon to remove favourite
    Click logout and check header component

Integration Testing - Homepage Component
    Return to Homepage
    Click the coin in the table and navigate to respective coin page from homepage

Integration Testing - Crypto Page Component
    Return to Homepage
    Click on the Crypto text and Navigate to Crypto Page
    Click the coin in the table and navigate to respective coin page from Crypto

Integration Testing - Coin Page Component
    Return to Homepage
    Click on the Crypto text and Navigate to Crypto Page
    Click the coin in the table and navigate to respective coin page from Crypto
    Not logged in and check page component
    Click on the login button
    Click on the login tab
    Login Account
    Logged in and check page component
    Click Add to Favourite button and check the component
    Click User Avatar and sidebar should appear
    Check added coin in the favourite list
    Close sidebar
    Logged in and check page component
    Click Remove from Favourite button and check the component
    Click User Avatar and sidebar should appear
    Check removed coin in the favourite list

Close Website
    Close Browser