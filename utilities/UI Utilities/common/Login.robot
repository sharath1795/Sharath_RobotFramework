*** Settings ***
Library    SeleniumLibrary    
Library     String
Resource    ../../Parser Utilities/Variables/test_bed_parser.robot


*** Keywords ***
TC_01_Login to Application with Valid credentials and Re-direct to Revision Planner Page
    
    Set Selenium Implicit Wait                      10
    Open Browser                                    ${URL}    ${Browser}
    Maximize Browser Window
    Set Window Size                                 1480    900 
    Wait Until Element Is Visible                   //button    60     
    Input text                                      //input[@name='username']    ${username}
    Input text                                      //input[@name='password']    ${password}
    Click button                                    //button[contains(@type,'submit')]
    Wait Until Element Is Visible                   //div[contains(text(),"HR News")]    60
    Go To                                           ${URL}ngapp/payroll/admin/revision-planner