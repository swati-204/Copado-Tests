*** Settings ***
Documentation            Salesforce Lead to quote journey
Library                  QForce
Resource                 ../resources/common.resource
Suite Setup                OpenBrowser            about:blank        chrome
Suite Teardown             CloseAllBrowsers


*** Test Cases ***
Lead Creation and Conversion
    [Documentation]            Create and convert a lead into Opportunity
    [Tags]                     Lead
    Salesforce login
    LaunchApp                  Sales
    ClickText                  Lead
    ClickText                  New
    