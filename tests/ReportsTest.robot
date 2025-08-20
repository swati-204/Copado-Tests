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
    ClickText    New            anchor= Assign label
    UseModal    On
    TypeText    *Opportunity Name    Testt opp
    ClickText    Select a date for Close Date
    ClickText    20
    PickList    *Stage    Closed Won
    ClickText    Save    partial_match=False
    UseModal    Off
    VerifyText    Opportunity\nNew opp
    
   #Reports Verification 
    ClickText    Reports
    ClickText    All Reports
    TypeText    Search all reports...    new
    ClickText    Opportunities Report
    VerifyText    New opp

    

