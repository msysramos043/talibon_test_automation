*** Keywords ***
Login Start
    Wait Until Element Is Visible           xpath=//button[normalize-space()='Login']
    Click Element                           xpath=/html/body/div[2]/main/div[1]/div/nav/ul/li[3]/div/button[2]
    Input Text                              xpath=//input[@placeholder='+63']                             9974090810
    Input Text                              xpath=//input[@placeholder='______']                          222222
    Click Element                           xpath=//button[@type='submit']
    Wait Until Page Contains                Successfully Logged In     
    Sleep                                   5s

Start
    Click Element                           xpath=//button[normalize-space()='Start New Transaction']
    Wait Until Page Contains                Select Transaction
    Wait Until Element Is Visible           xpath=//div[@class='mb-1 font-medium text-primary-base']
    Click Element                           xpath=//a[@href='/ovrs/inquiry']//div[@class='flex items-center space-x-2 rounded p-4 shadow-md']

Input OVR
    Wait Until Page Contains Element        xpath=//input[@title='Official Violation Receipt (OVR) Number']
    Input Text                              xpath=//input[@title='Official Violation Receipt (OVR) Number']     KL-1234567
    Click Element                           xpath=//button[normalize-space()='Next']

Review
    Wait Until Page Contains                Review Violations
    Click Element                           xpath=//button[normalize-space()='Proceed to Payment']

