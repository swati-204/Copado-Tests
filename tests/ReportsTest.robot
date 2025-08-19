***Settings***
Documentation    New test cases for Reports
Library          QForce
Resource         ../resources/common.resource
Suite Setup       OpenBrowser        about:blank     chrome
Suite Teardown    CloseAllBrowsers


*** Test Cases ***
Update Opportunity changes and verify repoorts
    Salesforce login
    LaunchApp        Sales
    ClickText        Opportunities
    VerifyText       Stage
    ClickText        Stage
    ClickText        Closed Won
    ClickText        Save


