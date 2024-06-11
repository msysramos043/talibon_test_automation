*** Settings ***
Resource        ${CURDIR}${/}..//RESOURCES${/}COMMON.robot

*** Variables ***
${browser}  gc
${url}      https://talibon-citizen-stg.multisyscorp.io/ovrs

*** Test Cases ***
Verify Functionality of Start New Transaction
    Open Browser                            ${url}        ${browser}
    Login Start
    Start
    Input OVR
    Review
    Close Browser