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
     
     TC_06_Verify the Band Frequency and change the Band Value
     
     TC_07_Verify the Goal Summary, Actual Amount and Variations 
    
     TC_08_Complete the Setup Analysis 
     
Salary Deferment 
    
     TC_09_Create New Analysis
    
     TC_10_Select the Goal as Salary Deferment  
     
     TC_11_Select the CTC Salary Item as Monthly CTC
       
     TC_12_Enter the Goal % and verify the Current Salary, Revised Salary and Total Employee Count
    
     TC_13_Verify the Band Frequency and change the Band Value 
     
     TC_14_Verify the Goal Summary, Actual Amount and Variations 
    
     TC_15_Complete the Setup Analysis 
     
Salary Cut 
    
     TC_16_Create New Analysis
    
     TC_17_Select the Goal as Salary Cut  
     
     TC_18_Select the CTC Salary Item as Basic
       
     TC_19_Enter the Goal % and verify the Current Salary, Revised Salary and Total Employee Count 
     
     TC_20_Verify the Band Frequency and change the Band Value
     
     TC_21_Verify the Goal Summary, Actual Amount and Variations
    
     TC_22_Complete the Setup Analysis 
     
Logout from the greytHR Application and close the browser 
    
     TC_23_Logout from greytHR and Close Browser      
    