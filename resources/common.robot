*** Settings ***
Library    AppiumLibrary  #mobile app
Library    SeleniumLibrary    
  
*** Keywords ***
wait and input text
    [Arguments]    ${locator}    ${txt_value}   
    Wait Until Element Is Visible     ${locator}    
    Input Text    ${locator}    ${txt_value}   
    
wait and click element
    [Arguments]    ${locator}    
     Wait Until Element Is Visible     ${locator}    
   Click Element    ${locator}   
   

