*** Settings ***
Resource    ../page/settings.robot
Suite Setup    Run Keywords    open setting    AND    sleep    3
Suite Teardown    Close Application
Test Setup    log  hainv
*** Test Cases ***
setting001
    open setting
    Press Keycode    3    #press Home
    sleep  3s
    scroll righ to left
    # Capture Page Screenshot
    Sleep    3s   
    Swipe By Percent	90	50	10	50	  #righ to left
    Sleep    3s     
    Swipe By Percent	10	50	90	50   #left to right
    wait and click element    //*[@text="Danh bạ"]
    Sleep    5s
    should
tc2
    open setting
    scroll to function  Hệ thống
    scroll to function  Ngôn ngữ và nhập liệu    