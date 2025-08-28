*** Settings ***
Documentation    resources folder
Library          QForce
Suite Setup      OpenBrowser        about:blank    chrome
Suite Teardown   CloseAllBrowsers

*** Variables ***
${Login_url}       https://login.salesforce.com
${Username}        swati@demo.com
${Password}        Radheeeeeeee@112





*** Keywords ***
Salesforce login
    [Documentation]        Salesforce login
    [Tags]                 login
    GoTo                   ${Login_url}       
    VerifyText             Username        
    TypeText               Username         ${Username}
    VerifyText             Password
    TypeText               Password         ${Password}
    ClickText              Log In
    