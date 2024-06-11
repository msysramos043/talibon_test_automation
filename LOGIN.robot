*** Settings ***
Resource        ${EXECDIR}${/}RESOURCES{/}COMMON.robot

*** Variables ***
${browser}  gc
${url}      https://talibon-citizen-stg.multisyscorp.io/ovrs

*** Test Cases ***
Verify Landing Page
    [Tags]                                  Test
    Pass Execution                          Verify Landing Page
    Open Browser                            ${url}        ${browser}

Verify Successful Login
    Pass Execution                          Verify Successful Login
    Open Browser                            ${url}                                                        ${browser}
    Login
    Close Browser

Verify Invalid Login
    Pass Execution                          Verify Invalid Login
    Open Browser                            ${url}                                                        ${browser}
    Invalid Login
    Close Browser

Verify Visibility of Mobile Error Message
    Pass Execution                          Verify Visibility of Mobile Error Message
    Open Browser                            ${url}                                                        ${browser}
    Mobile Number Required
    Close Browser

Verify Visibility of Pin Error Message
    Pass Execution                          Verify Visibility of Pin Error Message
    Open Browser                            ${url}                                                        ${browser}
    Pin Required
    Close Browser

Verify Functionality of Forgot Your Pin
    Open Browser                            ${url}                                                        ${browser}
    Forgot Your Pin
    Close Browser



