*** Settings ***
Library    SeleniumLibrary    
Resource    ../../Parser Utilities/Keywords/Revision Planner Keywords.robot
Resource    ../../Parser Utilities/Variables/test_bed_parser.robot

*** Keywords ***
TC_02_Create New Analysis
    Sleep                            2s    
    Click Element                    //button[@class='btn btn-primary pull-right']
    
TC_03_Select the Goal as Salary Increment 
    Sleep                            2s    
    Click Element                    //div[@class='span6']//div[1]//div[1]//div[1]//a[1]//div[1]//b[1]
    Click Element                    //div[contains(text(),'Salary Increment')]
    
TC_04_Select the CTC Salary Item as Annual CTC
    Sleep                            2s
    Click Element                    //div[@class='main-content']//div[2]//div[1]//div[1]//a[1]//div[1]//b[1]
    Click Element                    //div[contains(text(),'ANNUAL_CTC')]
    
TC_05_Enter the Goal % and verify the Current Salary, Revised Salary and Total Employee Count 
    Sleep                            2s    
    Input Text                       //input[@type='number']            10.5
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
    Click Element                    //button[contains(text(),'Next')]    
    
TC_06_Verify the Band Frequency and change the Band Value
   Sleep                             2s
   Input Text                        //input[@placeholder='Frequency']    60000    
   
TC_07_Verify the Goal Summary, Actual Amount and Variations    
    Sleep                            2s
    Scroll Page To Location          0    2000
    Sleep                            2s   
    ${GP}        Get Text            ${Goal%}
    ${GPV}       Get Text            ${GoalPercentage} 
    ${GA}        Get Text            ${Goalamt} 
    ${GAV}       Get Text            ${GoalAmt} 
    ${AP}        Get Text            ${Actual%}    
    ${APV}       Get Text            ${ActualPercentage}  
    ${AM}        Get Text            ${Actual}  
    ${AMV}       Get Text            ${ActualAmount} 
    ${VP}        Get Text            ${Variation%} 
    ${VPV}       Get Text            ${VariationPercentage}  
    ${VM}        Get Text            ${Variation}
    ${VMV}       Get Text            ${VariationAmount}  
    Sleep                            2s
    Log To Console                   ${GP} is ${GPV}
    Log To Console                   ${GA} is ${GAV}
    Log To Console                   ${AP} is ${APV}
    Log To Console                   ${AM} is ${AMV}
    Log To Console                   ${VP} is ${VPV}
    Log To Console                   ${VM} is ${VMV}    
           
TC_08_Complete the Setup Analysis
    Sleep                            2s   
    Click Element                    //button[contains(text(),'Finish')]
    Click Element                    //button[contains(text(),'Export Excel')]
    Sleep                            5s        
    Click Element                    //button[@class='btn summary-btn-close ng-scope']
    Sleep                            2s 