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
     
     TC_09_Edit the Analysis and change the CTC Salary Item, Goal% and Download the excel file
     
Salary Deferment 
    
     TC_10_Create New Analysis
    
     TC_11_Select the Goal as Salary Deferment  
     
     TC_12_Select the CTC Salary Item as Monthly CTC
       
     TC_13_Enter the Goal % and verify the Current Salary, Revised Salary and Total Employee Count
    
     TC_14_Verify the Band Frequency and change the Band Value 
     
     TC_15_Verify the Goal Summary, Actual Amount and Variations 
    
     TC_16_Complete the Setup Analysis 
     
     TC_17_Edit the Analysis and change the CTC Salary Item, Goal% and Download the excel file
     
Salary Cut 
    
     TC_18_Create New Analysis
    
     TC_19_Select the Goal as Salary Cut  
     
     TC_20_Select the CTC Salary Item as Basic
       
     TC_21_Enter the Goal % and verify the Current Salary, Revised Salary and Total Employee Count 
     
     TC_22_Verify the Band Frequency and change the Band Value
     
     TC_23_Verify the Goal Summary, Actual Amount and Variations
    
     TC_24_Complete the Setup Analysis 
     
     TC_25_Edit the Analysis and change the CTC Salary Item, Goal% and Download the excel file
     
Logout from the greytHR Application and close the browser 
    
     TC_26_Delete all the Analysis
    
     TC_27_Logout from greytHR and Close Browser      
    