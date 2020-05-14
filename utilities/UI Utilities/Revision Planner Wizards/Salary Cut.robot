*** Settings ***
Library    SeleniumLibrary    
Resource    ../../Parser Utilities/Keywords/Revision Planner Keywords.robot
Resource    ../../Parser Utilities/Variables/test_bed_parser.robot

*** Keywords ***
TC_12_Create New Analysis
    Sleep                            2s    
    Click Element                    //button[@class='btn btn-primary pull-right']
    
TC_13_Select the Goal as Salary Cut 
    Sleep                            2s    
    Click Element                    //div[@class='span6']//div[1]//div[1]//div[1]//a[1]//div[1]//b[1]
    Click Element                    //div[contains(text(),'Salary Cut')]
    
TC_14_Select the CTC Salary Item as Basic
    Sleep                            2s
    Click Element                    //div[@class='main-content']//div[2]//div[1]//div[1]//a[1]//div[1]//b[1]
    Click Element                    //div[contains(text(),'ANNUAL_CTC')] 

TC_15_Enter the Goal % and verify the Current Salary, Revised Salary and Total Employee Count 
    Sleep                            2s    
    Input Text                       //input[@type='number']        20.4
    ${CS}        Get Text            ${CurrentSalary}  
    ${CSA}       Get Text            ${CurrentSalaryAmount}  
    ${RS}        Get Text            ${RevisedSalary}  
    ${RSA}       Get Text            ${RevisedSalaryAmount}  
    ${TEC}       Get Text            ${TotalEmployeeCount}  
    ${EC}        Get Text            ${EmployeeCount}
    ${G}         Get Text            ${Goal}
    ${GA}        Get Text            ${GoalAmount}
    Sleep                            2s
    Log To Console                   ${CS} is ${CSA}
    Log To Console                   ${RS} is ${RSA}  
    Log To Console                   ${TEC}is ${EC}           
    Log To Console                   ${G} is ${GA} 
    
TC_16_Complete the Setup Analysis
    Sleep                            2s    
    Click Element                    //button[contains(text(),'Next')]
    Sleep                            2s
    Scroll Page To Location          0    2000
    Sleep                            2s     
    Click Element                    //button[contains(text(),'Finish')]    
    Click Element                    //button[@class='btn summary-btn-close ng-scope']
    Sleep                            2s 