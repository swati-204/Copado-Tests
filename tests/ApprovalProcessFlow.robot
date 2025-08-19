*** Settings ***
Documentation            Approval process flow
Library                  QForce
Resource                 ../resources/common.resource
Suite Setup                OpenBrowser             about:blank        chrome
Suite Teardown             CloseAllBrowsers


*** Test Cases ***
