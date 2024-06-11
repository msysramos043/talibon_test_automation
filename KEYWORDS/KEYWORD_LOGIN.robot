*** Keywords ***
Setup
    Pass Execution                          Setup Passed
    Log To Console                          Setup

Teardown
    Pass Execution    Teardown passed
    Log to Console    Teardown

Login
    Wait Until Element Is Visible           xpath=//button[normalize-space()='Login']
    Click Element                           xpath=/html/body/div[2]/main/div[1]/div/nav/ul/li[3]/div/button[2]
    Input Text                              xpath=//input[@placeholder='+63']                             9974090810
    Input Text                              xpath=//input[@placeholder='______']                          222222
    Click Element                           xpath=//button[@type='submit']
    Wait Until Page Contains                Successfully Logged In     
    Sleep                                   5s

Invalid Login
    Wait Until Element Is Visible           xpath=//button[normalize-space()='Login']
    Click Element                           xpath=/html/body/div[2]/main/div[1]/div/nav/ul/li[3]/div/button[2]
    Input Text                              xpath=//input[@placeholder='+63']                             9912312312
    Input Text                              xpath=//input[@placeholder='______']                          224146
    Click Element                           xpath=//button[@type='submit']
    Wait Until Page Contains                Invalid credentials.     
    Sleep                                   5s

Mobile Number Required
    Wait Until Element Is Visible           xpath=//button[normalize-space()='Login']
    Click Element                           xpath=/html/body/div[2]/main/div[1]/div/nav/ul/li[3]/div/button[2]
    Input Text                              xpath=//input[@placeholder='______']                          224146
    Click Element                           xpath=//button[@type='submit']
    Wait Until Page Contains                The mobile number field is required when pin is present.

Pin Required
    Wait Until Element Is Visible           xpath=//button[normalize-space()='Login']
    Click Element                           xpath=/html/body/div[2]/main/div[1]/div/nav/ul/li[3]/div/button[2]
    Input Text                              xpath=//input[@placeholder='+63']                             9912312312
    Click Element                           xpath=//button[@type='submit']
    Wait Until Page Contains                The pin field is required.

Forgot Your Pin
    Wait Until Element Is Visible           xpath=//button[normalize-space()='Login']
    Click Element                           xpath=/html/body/div[2]/main/div[1]/div/nav/ul/li[3]/div/button[2]
    Click Element                           xpath=//span[@class='font-semibold text-sm text-primary-base']
    Wait Until Page Contains                Mobile
    Input Text                              xpath=//input[@placeholder='+63']                             9974090810
    Click Element                           xpath=//button[@type='submit']
    Wait Until Page Contains                OTP