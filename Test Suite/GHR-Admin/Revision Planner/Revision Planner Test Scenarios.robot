*** Settings ***
Resource    ../../../utilities/Parser Utilities/Keywords/Revision Planner Keywords.robot
Resource    ../../../utilities/UI Utilities/common/Login.robot
Resource    ../../../utilities/UI Utilities/common/Logout.robot
Resource    ../../../utilities/Parser Utilities/Variables/test_bed_parser.robot
Resource    ../../../utilities/UI Utilities/Revision Planner Wizards/Salary Increment.robot
Resource    ../../../utilities/UI Utilities/Revision Planner Wizards/Salary Deferment.robot
Resource    ../../../utilities/UI Utilities/Revision Planner Wizards/Salary Cut.robot

*** Test Cases ***
Login to greytHR Application and Redirect to Revision Planner Wizard Page
    
     TC_01_Login to greythr Application with Valid credentials and Re-direct to Revision Planner Page 
     
Salary Increment 
    
     TC_02_Create New Analysis
    
     TC_03_Select the Goal as Salary Increment  
     
     TC_04_Select the CTC Salary Item as Annual CTC
       
     TC_05_Enter the Goal % and verify the Current Salary, Revised Salary and Total Employee Count 
    
     TC_06_Complete the Setup Analysis 
     
Salary Deferment 
    
    TC_07_Create New Analysis
    
    TC_08_Select the Goal as Salary Deferment  
     
    TC_09_Select the CTC Salary Item as Monthly CTC
       
    TC_10_Enter the Goal % and verify the Current Salary, Revised Salary and Total Employee Count 
    
    TC_11_Complete the Setup Analysis 
     
Salary Cut 
    
     TC_12_Create New Analysis
    
     TC_13_Select the Goal as Salary Cut  
     
     TC_14_Select the CTC Salary Item as Basic
       
     TC_15_Enter the Goal % and verify the Current Salary, Revised Salary and Total Employee Count 
    
     TC_16_Complete the Setup Analysis 
     
Logout from the greytHR Application and close the browser 
    
    TC_17_Logout from greytHR and Close Browser      
    