*** Settings ***
Documentation        Salesforce Regression suite 
Library              QForce
Suite Setup          OpenBrowser        about:blank            chrome
Suite Teardown       CloseAllBrowsers


*** Test Cases ***
Navigate to Service app and Create case 
    [Documentation]            Navigate to Service and create a case
    [Tags]                     testgen
    