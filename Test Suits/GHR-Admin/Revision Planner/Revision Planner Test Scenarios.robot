*** Settings ***
Resource    ../../../utilities/Parser Utilities/Keywords/Revision Planner Keywords.robot
Resource    ../../../utilities/UI Utilities/common/Login.robot
Resource    ../../../utilities/UI Utilities/Revision Planner WISA Pages/WISA.robot
Resource    ../../../utilities/Parser Utilities/Variables/test_bed_parser.robot


*** Test Cases ***
Verifying the login page and Re-directing to Revision Planner Page.
    TC_01_Login to Application with Valid credentials and Re-direct to Revision Planner Page 
    
    TC_02_Create new analysis
    
    TC_03_Select the Goal as Increment 
       
    TC_04_Enter the Goal %
    
    TC_05_Complete the Setup 

   