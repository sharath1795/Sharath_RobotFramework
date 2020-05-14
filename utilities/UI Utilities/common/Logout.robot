*** Settings ***
Library     SeleniumLibrary 

*** Keywords ***
 TC_24_Logout from greytHR and Close Browser
    Sleep                   2s
    Click Element           //a[contains(text(),'Sign Out')]
    Close Browser