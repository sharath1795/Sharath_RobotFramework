*** Settings ***
Library     SeleniumLibrary 

*** Keywords ***
TC_26_Delete all the Analysis
    Sleep                            2s
    Click Element                    //span[1]//div[1]//table[1]//tbody[1]//tr[1]//td[1]//div[1]//span[2]//i[3]
    Click Element                    //button[contains(text(),'Confirm')]    
    Sleep                            8s    
    Click Element                    //span[2]//div[1]//table[1]//tbody[1]//tr[1]//td[1]//div[1]//span[2]//i[3]
    Click Element                    //button[contains(text(),'Confirm')]   
    Sleep                            8s 
    Click Element                    //i[@class='icon-trash']   
    Click Element                    //button[contains(text(),'Confirm')]
    Sleep                            5s
    
TC_27_Logout from greytHR and Close Browser
    Sleep                            2s
    Click Element                    //a[contains(text(),'Sign Out')]
    Close Browser