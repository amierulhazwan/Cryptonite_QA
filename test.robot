*** Settings ***
Library         SeleniumLibrary
Resource        variable.robot
Resource        header_test.robot
Resource        footer_test.robot
Resource        landing_test.robot
Resource        sidebar_test.robot
Resource        sign_up.robot
Resource        login.robot
Resource        homepage_test.robot
Resource        crypto_test.robot
Resource        coin_test.robot
Resource        forex_test.robot
Resource        help_test.robot

# Below are the test cases for compilation of component testing --------------------------------------------------------
# Comment out the Test case from respective robot file -----------------------------------------------------------------

*** Test Cases ***
Open Website
    Open Browser        https://cryptonite5.netlify.app/  chrome
    maximize browser window

Header Component Test
    Check header component
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
    Click on the currency button
    Check for the currency option
    Click USD the currency should be USD and dropdown should disappear
    Click MYR the currency should be MYR and dropdown should disappear
    Click on the login button
    Click on the sign-up tab
    Click on the login tab
    Login and check header component
    Click User Avatar and sidebar should appear
    Click logout and check header component
    Decrease window size and check header component
    Click on the hamburger menu
    Check hamburger menu component
    Close hamburger
    Click on the hamburger menu
    Check CRYPTO in hamburger navigation
    Click on the hamburger menu
    Check FOREX in hamburger navigation
    Click on the hamburger menu
    Check ABOUT US in hamburger navigation
    Click on the hamburger menu
    Check HELP in hamburger navigation
    Maximize browser window
    Return to Homepage
    Check header component

Footer Component Test
    Check header component
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

Sidebar Component Test
    Check header component
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
    Return to Homepage

Sign Up Tab Test
    Return to Homepage
    Check header component
    Click on the login button
    Click on the sign-up tab

Sign Up Tab - Check for input when click another tab
    Sign Up Tab - Valid email in Email Field
    Sign Up Tab - Valid Pswd in Pswd Field
    Sign Up Tab - Valid Pswd in Conf Field
    Sign Up Tab - Check if input erase when tab is changed

Sign Up Tab - Email field component
    Sign Up Tab - Valid email in Email Field
    Sign Up Tab - Check Delete button f(x) - Email field
    Sign Up Tab - Valid email in Email Field
    Sign Up Tab - Check Backspace button f(x) - Email field
    Sign Up Tab - Valid email in Email Field
    Sign Up Tab - Check Copy f(x) - Email field
    Sign Up Tab - Clear Email field
    Sign Up Tab - Check Paste f(x) - Email field
    Sign Up Tab - Clear Email field

    Sign Up Tab - Check for alpha & numeric character in Email field
    Sign Up Tab - Clear Email field
    Sign Up Tab - Check for uppercase alphabet in Email field
    Sign Up Tab - Clear Email field
    Sign Up Tab - Check for lowercase alphabet in Email field
    Sign Up Tab - Clear Email field
    Sign Up Tab - Check for uppercase & lowercase alphabet in Email field
    Sign Up Tab - Clear Email field
    Sign Up Tab - Check for special character in Email field
    Sign Up Tab - Clear Email field

Sign Up Tab - Password field component
    Sign Up Tab - Valid Pswd in Pswd Field
    Sign Up Tab - Check Delete button f(x) - Pswd field
    Sign Up Tab - Valid Pswd in Pswd Field
    Sign Up Tab - Check Backspace button f(x) - Pswd field
    Sign Up Tab - Valid Pswd in Pswd Field
    Sign Up Tab - Check Copy f(x) - Pswd field
    Sign Up Tab - Clear Pswd field
    Sign Up Tab - Check Paste f(x) - Pswd field
    Sign Up Tab - Clear Pswd field

    Sign Up Tab - Check for alpha & numeric character in Pswd field
    Sign Up Tab - Clear Pswd field
    Sign Up Tab - Check for uppercase alphabet in Pswd field
    Sign Up Tab - Clear Pswd field
    Sign Up Tab - Check for lowercase alphabet in Pswd field
    Sign Up Tab - Clear Pswd field
    Sign Up Tab - Check for uppercase & lowercase alphabet in Pswd field
    Sign Up Tab - Clear Pswd field
    Sign Up Tab - Check for special character in Pswd field
    Sign Up Tab - Clear Pswd field

Sign Up Tab - Conf field component
    Sign Up Tab - Valid Pswd in Conf Field
    Sign Up Tab - Check Delete button f(x) - Conf field
    Sign Up Tab - Valid Pswd in Conf Field
    Sign Up Tab - Check Backspace button f(x) - Conf field
    Sign Up Tab - Valid Pswd in Conf Field
    Sign Up Tab - Check Copy f(x) - Conf field
    Sign Up Tab - Clear Conf field
    Sign Up Tab - Check Paste f(x) - Conf field
    Sign Up Tab - Clear Conf field

    Sign Up Tab - Check for alpha & numeric character in Conf field
    Sign Up Tab - Clear Conf field
    Sign Up Tab - Check for uppercase alphabet in Conf field
    Sign Up Tab - Clear Conf field
    Sign Up Tab - Check for lowercase alphabet in Conf field
    Sign Up Tab - Clear Conf field
    Sign Up Tab - Check for uppercase & lowercase alphabet in Conf field
    Sign Up Tab - Clear Conf field
    Sign Up Tab - Check for special character in Conf field
    Sign Up Tab - Clear Conf field

Sign Up Tab - Sign Up Flow Test
    Sign Up Tab - One of the mandatory field is not filled, click sign up
    Sign Up Tab - All mandatory field is not filled, click sign up
    Sign Up Tab - Invalid email input, click sign up
    Sign Up Tab - Used email input, click sign up
    Sign Up Tab - Different password in the confirm field, click sign up
    Sign Up Tab - Check for Pswd limit in Pswd Field

Login Tab Test
#    Return to Homepage
#    Check header component
#    Click on the login button
    Click on the login tab

Login Tab - Check for input when click another tab
    Login Tab - Valid email in Email Field
    Login Tab - Valid Pswd in Pswd Field
    Login Tab - Check if input erase when tab is changed

Login Tab - Email field component
    Login Tab - Valid email in Email Field
    Login Tab - Check Delete button f(x) - Email field
    Login Tab - Valid email in Email Field
    Login Tab - Check Backspace button f(x) - Email field
    Login Tab - Valid email in Email Field
    Login Tab - Check Copy f(x) - Email field
    Login Tab - Clear Email field
    Login Tab - Check Paste f(x) - Email field
    Login Tab - Clear Email field

    Login Tab - Check for alpha & numeric character in Email field
    Login Tab - Clear Email field
    Login Tab - Check for uppercase alphabet in Email field
    Login Tab - Clear Email field
    Login Tab - Check for lowercase alphabet in Email field
    Login Tab - Clear Email field
    Login Tab - Check for uppercase & lowercase alphabet in Email field
    Login Tab - Clear Email field
    Login Tab - Check for special character in Email field
    Login Tab - Clear Email field

Login Tab - Password field component
    Login Tab - Valid Pswd in Pswd Field
    Login Tab - Check Delete button f(x) - Pswd field
    Login Tab - Valid Pswd in Pswd Field
    Login Tab - Check Backspace button f(x) - Pswd field
    Login Tab - Valid Pswd in Pswd Field
    Login Tab - Check Copy f(x) - Pswd field
    Login Tab - Clear Pswd field
    Login Tab - Check Paste f(x) - Pswd field
    Login Tab - Clear Pswd field

    Login Tab - Check for alpha & numeric character in Pswd field
    Login Tab - Clear Pswd field
    Login Tab - Check for uppercase alphabet in Pswd field
    Login Tab - Clear Pswd field
    Login Tab - Check for lowercase alphabet in Pswd field
    Login Tab - Clear Pswd field
    Login Tab - Check for uppercase & lowercase alphabet in Pswd field
    Login Tab - Clear Pswd field
    Login Tab - Check for special character in Pswd field
    Login Tab - Clear Pswd field

Login Tab - Login Flow Test
    Login Tab - One of the mandatory field is not filled, click login
    Login Tab - All mandatory field is not filled, click login
    Login Tab - Invalid email input, click login
    Login Tab - Unregistered email input, click login
    Login Tab - Invalid password input, click login
    Login Tab - Check for Pswd limit in Pswd Field
    Login Tab - Valid credential, click login

Login Tab - Logout and return to Homepage
    Click User Avatar and sidebar should appear
    Click logout and check header component
    Return to Homepage

Landing Page Testing
    Return to Homepage
    Click on the Promotional text on the Footer and Navigate to Landing page
    Click on the first Conquer the Market button
    Click on the Promotional text on the Footer and Navigate to Landing page
    Click on the second Conquer the Market button
    Click on the Promotional text on the Footer and Navigate to Landing page
    Click on the third Conquer the Market button

Homepage Test
    Return to Homepage
    Click the coin in the table and navigate to respective coin page from homepage
    Return to Homepage

Crypto Page Test
    Return to Homepage
    Check header component
    Click on the Crypto text and Navigate to Crypto Page
    Click the coin in the table and navigate to respective coin page from Crypto
    Click on the Crypto text and Navigate to Crypto Page

Search Field Component Test
    Scroll to search field component
    Valid Search Input
    Check Delete button f(x) - Search field
    Valid Search Input
    Check Backspace button f(x) - Search field
    Valid Search Input
    Check Copy f(x) - Search field
    Clear Search field
    Check Paste f(x) - Search field
    Clear Search field

    Check for numeric character in search field
    Clear Search field
    Check for alpha & numeric character in search field
    Clear Search field
    Check for uppercase alphabet in search field
    Clear Search field
    Check for lowercase alphabet in search field
    Clear Search field
    Check for uppercase & lowercase alphabet in search field
    Clear Search field

Search Result Test
    Check for invalid input
    Clear Search field
    Check for valid input from page 1 Crypto Table
    Clear Search field
    Check for valid input from page 2 Crypto Table
    Clear Search field

Coin Page Component Test
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
    Close sidebar
    Click User Avatar and sidebar should appear
    Click logout and check header component

Forex Component Test
    Return to Homepage
    Check header component
    Click on the Crypto text and Navigate to Forex Page
    Click Forex pair dropdown button
    Check Forex pair dropdown component
    Click one of the Forex pair and check component

Help Page Test
    Check header component
    Return to Homepage
    Click on the Crypto text and Navigate to Help Page

Dropdown Component Test
    Click the dropdown button, click again to close
    Click more than one dropdown button, click again to close

First Rating Component Test
    Scroll to Feedback section
    Click the first rating component from rate 1 to rate 5
    Click the first rating component again to unrate

Second Rating Component Test
    Click the second rating component from rate 1 to rate 5
    Click the second rating component again to unrate

Like/Dislike Component
    Scroll to Feedback section
    Click thumbs up, color to green
    Click thumbs up again, color default
    Click thumbs down, color to red
    Click thumbs down again, color default
    Scroll to Top

Textfield Component
    Scroll to Textfield section
    Valid feedback input
    Check Delete button f(x) - text field
    Valid feedback input
    Check Backspace button f(x) - text field
    Valid feedback input
    Check Copy f(x) - text field
    Clear text field
    Check Paste f(x) - text field
    Clear text field

    Check for numeric character in text field
    Clear text field
    Check for alpha & numeric character in text field
    Clear text field
    Check for uppercase alphabet in text field
    Clear text field
    Check for lowercase alphabet in text field
    Clear text field
    Check for uppercase & lowercase alphabet in text field
    Clear text field

Feedback Submit Flow Test
    Rating clicked and valid input, click submit
    No rating and valid input, click submit
    Rating clicked and no input, click submit

Close Website
    Close Browser