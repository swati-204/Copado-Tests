*** Settings ***
Documentation        The project focuses on ensuring smooth functionality of account creation, contact association, and opportunity creation.
         
Resource              resources/common.resource
Library               QForce
Suite Setup            OpenBrowser    about:blank        chrome
Suite Teardown        CloseAllBrowsers



*** Test Cases ***
User Journey 
    [Documentation]        Customer Onboarding Flow in Salesforce:
                           Login to Salesforce (using SSO/MFA ready flow).
