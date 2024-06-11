*** Settings ***

Library             SeleniumLibrary

*** Variables ***

${browser}  gc
${url}      https://talibon-citizen-stg.multisyscorp.io/ovrs

*** Test Cases ***

Verify Get Started Functionality
    Open Browser                            ${url}        ${browser}
    Register
    Close Browser



*** Keywords ***
Register
    Wait Until Page Contains        Violation
    Click Element                   xpath=//button[normalize-space()='Get Started']
    Input Text                      xpath=//input[@placeholder='+63']                           9498510239
    Input Text                      xpath=//input[@title='Set Account PIN']                     111111
    Input Text                      xpath=//input[@title='Retype Account PIN']                  111111
    Click Element                   xpath=//button[@type='submit']
    Wait Until Page Contains        OTP
    Sleep                           5s


    