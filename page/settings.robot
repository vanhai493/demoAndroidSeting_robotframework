*** Settings ***

Resource    ../resources/common.robot


*** Variables ***
${txt_timKiemCaiDat}        //*[@resource-id='com.android.settings:id/search_action_bar']/android.widget.TextView
${btn_back}     class=android.widget.ImageButton


*** Keywords ***
open setting
    Open Application   http://localhost:4723/wd/hub     platformName=Android     platformVersion=8.1.0    deviceName=AAB00007852        appPackage=com.android.settings    appActivity=com.android.settings.Settings   automationName=UiAutomator2
    Page Should Contain Text    Mạng và Internet    

scroll to function
    [Documentation]    day la action scroll
    [Arguments]  ${text}
    wait and click element   android=new UiScrollable(new UiSelector().scrollable(true)).scrollIntoView(new UiSelector().text("${text}"))
    sleep  1s
    ${title}    get text   //*[@class="android.widget.ImageButton"]/following-sibling::android.widget.TextView
    should be equal   ${title}    ${text}
    
scroll righ to left
        Swipe By Percent	90	50	10	50	  #righ to left
demo
    ${txt}    Set Variable   1
    Set Global Variable    ${txt}    
# scroll righ to left
