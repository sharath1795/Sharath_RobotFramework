*** Settings ***
Library     SeleniumLibrary    
Resource    ../../Parser Utilities/Variables/test_bed_parser.robot

*** Keywords ***
TC_01_Login to greythr Application with Valid credentials and Re-direct to Revision Planner Page 
    
    Set Selenium Implicit Wait                      10
    Open Browser                                    ${URL}    ${Browser}
    Maximize Browser Window
    Set Window Size                                 1480    900 
    Wait Until Element Is Visible                   //input[@name='username']     
    Input text                                      //input[@name='username']    ${username}
    Input text                                      //input[@name='password']    ${password}
    Click button                                    //button[contains(@type,'submit')]
    Sleep                                           5s    
    Go To                                           ${URL}ngapp/payroll/admin/revision-planner