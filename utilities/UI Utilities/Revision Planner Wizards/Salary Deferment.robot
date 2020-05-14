*** Settings ***
Library    SeleniumLibrary    
Resource    ../../Parser Utilities/Keywords/Revision Planner Keywords.robot
Resource    ../../Parser Utilities/Variables/test_bed_parser.robot

*** Keywords ***
TC_07_Create New Analysis
    Sleep                            2s    
    Click Element                    //button[@class='btn btn-primary pull-right']
    
TC_08_Select the Goal as Salary Deferment 
    Sleep                            2s    
    Click Element                    //div[@class='span6']//div[1]//div[1]//div[1]//a[1]//div[1]//b[1]
    Click Element                    //div[contains(text(),'Salary Deferment')]
    
TC_09_Select the CTC Salary Item as Monthly CTC
    Sleep                            2s
    Click Element                    //div[@class='main-content']//div[2]//div[1]//div[1]//a[1]//div[1]//b[1]
    Scroll Element Into View         /html[1]/body[1]/div[16]/ul[1]/li[2]/div[1]
    Click Element                    //div[contains(@class,'select2-result-label')]
    
TC_10_Enter the Goal % and verify the Current Salary, Revised Salary and Total Employee Count 
    Sleep                            2s    
    Input Text                       //input[@type='number']        20
    ${CS}        Get Text            ${CurrentSalary}  
    ${CSA}       Get Text            ${CurrentSalaryAmount}  
    ${RS}        Get Text            ${RevisedSalary}  
    ${RSA}       Get Text            ${RevisedSalaryAmount}  
    ${TEC}       Get Text            ${TotalEmployeeCount}  
    ${EC}        Get Text            ${EmployeeCount}
    Sleep                            2s
    Log To Console                   ${CS} is ${CSA}
    Log To Console                   ${RS} is ${RSA}  
    Log To Console                   ${TEC}is ${EC}           
    
TC_11_Complete the Setup Analysis
    Sleep                            2s    
    Click Element                    //button[contains(text(),'Next')]
    Sleep                            2s
    Scroll Page To Location          0    2000
    Sleep                            2s     
    Click Element                    //button[contains(text(),'Finish')]    
    Click Element                    //button[@class='btn summary-btn-close ng-scope']
    Sleep                            2s