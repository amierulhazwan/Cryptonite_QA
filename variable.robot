*** Settings ***
Documentation       Suite description
Library             SeleniumLibrary

*** Variable ***
# Header Component
${test_email}       emailtest@test.com.my
${test_pswd}        abc123
${header}           //*[@id="root"]/div[2]/div/header/div/div
${logo_header}      //*[@id="root"]/div[2]/div/header/div/div/img
${crypto_header}    //*[@id="root"]/div[2]/div/header/div/div/h6[1]
${forex_header}     //*[@id="root"]/div[2]/div/header/div/div/h6[2]
${aboutUs_header}   //*[@id="root"]/div[2]/div/header/div/div/h6[3]
${help_header}      //*[@id="root"]/div[2]/div/header/div/div/h6[4]
${currency_btn}     //*[@id="root"]/div[2]/div/header/div/div/div/div/div[1]/button[1]
${currency_opt}     //*[@role="listbox" and contains (@class, "MuiList-root MuiMenu-list MuiList-padding")]
${login_btn}        //*[@id="root"]/div[2]/div/header/div/div/div/div/div[1]/button[2]
${log_sign_tab}     //*[@class="MuiPaper-root MuiAppBar-root MuiAppBar-positionStatic MuiAppBar-colorPrimary MuiPaper-elevation4"]
${log_tab}          //*[text()="Login" and contains (@class, "MuiTab-wrapper")]
${sign_tab}         //*[text()="Sign Up" and contains (@class, "MuiTab-wrapper")]

${email_field}      //*[@type="email" and contains (@class, "MuiInputBase-input MuiFilledInput-input")]
${pswd_field}       //*[@type="password" and contains (@class, "MuiInputBase-input MuiFilledInput-input")]
${conf_field}       //*[@id="confirm password" and contains (@class, "MuiInputBase-input MuiFilledInput-input")]
${login_btn_tab}    //*[@type="button" and contains (@class, "MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedSizeLarge MuiButton-sizeLarge")]
${sign_btn_tab}     //*[@type="button" and contains (@class, "MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedSizeLarge MuiButton-sizeLarge")]
${backdrop_tab}     //*[@class="MuiBackdrop-root"]

${hamburger}        //*[@id="hamburger"]
${hamburger_opt}    //*[@id="root"]/div[2]/div/header/div/div/div[2]
${ham_crypto}       //*[text()="CRYPTO" and contains (@class, "MuiTypography-body1")]
${ham_forex}        //*[text()="FOREX" and contains (@class, "MuiTypography-body1")]
${ham_about}        //*[text()="ABOUT US" and contains (@class, "MuiTypography-body1")]
${ham_help}         //*[text()="HELP" and contains (@class, "MuiTypography-body1")]
${ham_x}            //*[@id="root"]/div[2]/div/header/div/div/div[2]/p[1]

${error_msg}        //*[@class="MuiAlert-message"]

# Footer Component
${footer}           //*[@id="root"]/div[3]/div[2]/div
${logo_footer}      //*[@id="root"]/div[3]/div[2]/div/div[1]/div[1]/img
${about_footer}     //*[@id="root"]/div[3]/div[2]/div/div[1]/div[2]/div[1]/p[1]
${contact_footer}   //*[@id="root"]/div[3]/div[2]/div/div[1]/div[2]/div[1]/p[2]
${help_footer}      //*[@id="root"]/div[3]/div[2]/div/div[1]/div[2]/div[1]/p[3]
${search_footer}    //*[@id="root"]/div[3]/div[2]/div/div[1]/div[2]/div[2]/p[1]
${trending_footer}  //*[@id="root"]/div[3]/div[2]/div/div[1]/div[2]/div[2]/p[2]
${promo_footer}     //*[@id="root"]/div[3]/div[2]/div/div[1]/div[2]/div[2]/p[3]

# Sidebar Component
${avatar}           //*[@class="MuiSvgIcon-root MuiAvatar-fallback"]
${sb}               //*[@class="MuiPaper-root MuiDrawer-paper MuiDrawer-paperAnchorRight MuiPaper-elevation16"]
${avatar_sb}        //*[@class="MuiAvatar-root MuiAvatar-circular MuiAvatar-colorDefault"]
${trash_icn}        //*[@d="M864 256H736v-80c0-35.3-28.7-64-64-64H352c-35.3 0-64 28.7-64 64v80H160c-17.7 0-32 14.3-32 32v32c0 4.4 3.6 8 8 8h60.4l24.7 523c1.6 34.1 29.8 61 63.9 61h454c34.2 0 62.3-26.8 63.9-61l24.7-523H888c4.4 0 8-3.6 8-8v-32c0-17.7-14.3-32-32-32zm-200 0H360v-72h304v72z"]
${logout_btn}       //*[@type="button" and contains (@class, "MuiButtonBase-root MuiButton-root MuiButton-contained")]
${backdrop_sb}      //*[@class="MuiBackdrop-root"]

# Landing Page Component
${first_btn}        //*[@id="root"]/div[3]/div[1]/div[1]/div[1]/div[2]/button
${sec_btn}          //*[@id="home"]/div/div[2]/button
${third_btn}        //*[@id="statistics"]/div[2]/div/button

# Crypto Table
${search_field}     //*[@type="text" and contains (@class, "MuiInputBase-input MuiFilledInput-input")]
${table_row1_hp}    //*[@id="root"]/div[3]/div[1]/div[2]/div[2]/div[2]/table/tbody/tr[1]
${table_row1_cr}    //*[@id="root"]/div[3]/div[1]/div[3]/div[2]/table/tbody/tr[1]/th/div[2]/span[1]

# Coin Page Component
${fav_btn}          //*[@type="button" and contains (@class, "MuiButtonBase-root MuiButton-root MuiButton-outlined")]
${green_btn}        //*[@type="button" and contains (@style, "background-color: rgb(73, 255, 0)")]
${red_btn}          //*[@type="button" and contains (@style, "background-color: red")]

# Forex Page Component
${forex_tab}        //*[@id="root"]/div[3]/div[1]/div/div[2]/div[1]
${forex_tab_dd}     //*[@id="root"]/div[3]/div[1]/div/div[2]/div[2]/div
${dd_1item}         //*[@id="root"]/div[3]/div[1]/div/div[2]/div[2]/div/div[1]

# Help Page Component
${faq_1}            //*[text()="Why is Cryptonite price different from others?"]
${faq_2}            //*[text()="Can I use Cryptonite data for personal and business use?"]
${faq_3}            //*[text()="Does Cryptonite have an official coin?"]
${faq_4}            //*[text()="What is the Timezone used in Cryptonite charts?"]
${faq_5}            //*[text()="How to change the currency?"]

${faq_1dd}          //*[@id="root"]/div[3]/div[1]/div[1]/div/div/div[1]/div[2]
${faq_2dd}          //*[@id="root"]/div[3]/div[1]/div[1]/div/div/div[2]/div[2]
${faq_3dd}          //*[@id="root"]/div[3]/div[1]/div[1]/div/div/div[3]/div[2]
${faq_4dd}          //*[@id="root"]/div[3]/div[1]/div[1]/div/div/div[4]/div[2]
${faq_5dd}          //*[@id="root"]/div[3]/div[1]/div[1]/div/div/div[5]/div[2]

${first_rate_1}     //*[@id="root"]/div[3]/div[1]/form/div/div[1]/span[1]/label[1]
${first_rate_2}     //*[@id="root"]/div[3]/div[1]/form/div/div[1]/span[1]/label[2]
${first_rate_3}     //*[@id="root"]/div[3]/div[1]/form/div/div[1]/span[1]/label[3]
${first_rate_4}     //*[@id="root"]/div[3]/div[1]/form/div/div[1]/span[1]/label[4]
${first_rate_5}     //*[@id="root"]/div[3]/div[1]/form/div/div[1]/span[1]/label[5]

${second_rate_1}    //*[@id="root"]/div[3]/div[1]/form/div/div[1]/span[2]/label[1]
${second_rate_2}    //*[@id="root"]/div[3]/div[1]/form/div/div[1]/span[2]/label[2]
${second_rate_3}    //*[@id="root"]/div[3]/div[1]/form/div/div[1]/span[2]/label[3]
${second_rate_4}    //*[@id="root"]/div[3]/div[1]/form/div/div[1]/span[2]/label[4]
${second_rate_5}    //*[@id="root"]/div[3]/div[1]/form/div/div[1]/span[2]/label[5]

${thumb_up}         //*[@data-testid="ThumbUpOffAltIcon"]
${green_thumb}      //*[@data-testid='ThumbUpOffAltIcon' and contains (@value, "yes")]
${thumb_dn}         //*[@data-testid="ThumbDownOffAltIcon"]
${red_thumb}        //*[@data-testid='ThumbDownOffAltIcon' and contains (@value, "no")]

${textfield}        //*[@id="root"]/div[3]/div[1]/form/div/div[1]/textarea
${submit_btn}       //*[@id="root"]/div[3]/div[1]/form/div/div[2]/button/p
${popup_msg}        //*[@class="MuiAlert-message"]
${error_msg}        //*[@class="MuiAlert-message"]

