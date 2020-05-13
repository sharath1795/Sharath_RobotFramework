*** Settings ***
Library    SeleniumLibrary    
Resource    ../../Parser Utilities/Keywords/Revision Planner Keywords.robot

*** Keywords ***
TC_02_Create new analysis
    Sleep                            2s    
    Click Element                    //button[@class='btn btn-primary pull-right']
    
TC_03_Select the Goal as Increment
    Sleep                            2s    
    Click Element                    //div[@class='span6']//div[1]//div[1]//div[1]//a[1]//div[1]//b[1]
    Click Element                    //div[contains(text(),'Salary Increment')]
              
TC_04_Enter the Goal %
    Sleep                            2s    
    Input Text                       //input[@type='number']        10
    
TC_05_Complete the Setup 
    Sleep                            2s    
    Click Element                    //button[contains(text(),'Next')]
    Sleep                            2s
    Scroll Page To Location          0    2000
    Sleep                            2s     
    Click Element                    //button[contains(text(),'Finish')]    
    Click Element                    //button[@class='btn summary-btn-close ng-scope']
    Sleep                            2s  
    Close Browser
    
    
    
            


       
   
