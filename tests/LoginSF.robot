*** Settings ***
Documentation        Salesforce Regression suite 
Library              QForce
Resource             ../resources/common.resource
Suite Setup          OpenBrowser            about:blank            chrome
Suite Teardown       CloseAllBrowsers


*** Test Cases ***
Navigate to Service app and Create case 
    [Documentation]            Navigate to Service and create a case
    [Tags]                     testgen
    Salesforce login
    LaunchApp                  Service
    ClickText                  Case
    ClickText                  New
    ClickText                  Contact Name
    ClickText                  sam adams
    PickList                   Case origin        Phone
    ClickText                  Save

    
    

Case Creation
