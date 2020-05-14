*** Settings ***
Library     SeleniumLibrary 

*** Keywords ***
 TC_17_Logout from greytHR and Close Browser
    Sleep                   2s
    Click Element           //a[contains(text(),'Sign Out')]
    Close Browser