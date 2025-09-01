*** Settings ***
Documentation        The project focuses on ensuring smooth functionality of account creation, contact association, and opportunity creation.
         
Resource              resources/common.resource
Library               QForce
Suite Setup            OpenBrowser    about:blank        chrome
Suite Teardown        CloseAllBrowsers



*** Test Cases ***
User Journey 
    [Documentation]        Customer Onboarding Flow in Salesforce                       
                           # Login to Salesforce (using SSO/MFA ready flow).
                           # Navigate to Accounts → Create a new Account.
                           # Add related Contact to the account.
                           # Create a new Opportunity linked to the same account.
                           # Update the Opportunity stage to Closed Won.
                           # Validate:
                           # Account is created.
                           # Contact is correctly linked.
                           # Opportunity is closed successfully.
                        
Salesforce Login 
    [Tags]        Login
    Salesforce login

Account Creation 
    [Documentation]        Navigate to Accounts and Create a new account record 
    LaunchApp              Sales
    ClickText              Accounts
    ClickText              New    anchor=Import
    TypeText               Account Name         Copado Account 
    DropDown               Industry             Apparel
    ClickText              Save

