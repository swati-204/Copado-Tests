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
    ClickText    Leads
    ClickText    New
    UseModal    On
    PickList    Salutation    Mr.
    TypeText    Last Name    copado
    TypeText    *Company    crt
    PickList    Lead Source    Other
    PickList    *Lead Status    Working - Contacted
    ClickText    Save    partial_match=False
    UseModal    Off
    ClickText    Details
    VerifyText    Mr. copado
    ClickText    Show more actions
    ClickText    Convert
  ClickText    crt-
   # ClickText    View All    anchor=Upcoming & Overdue
    ClickText    Details
    VerifyText    crt-

Quote Creation
    ClickText         Quotes
    ClickText    New Quote
    UseModal    On
    TypeText    *Quote Name    copado quote
    ClickText    Save
    UseModal    Off

