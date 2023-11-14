***Settings***

Library             AppiumLibrary

Resource            mapper/login_page.robot
Resource            mapper/initial_page.robot
Resource            mapper/assinae_page.robot

Resource            keywords/login.robot
Resource            keywords/caller.robot
Resource            keywords/assinae.robot


Resource            fixture/customers.robot

***Keywords***
Open Session
    Set Appium Timeout      50
    Open Application        http://localhost:4723/wd/hub
    ...                     platformName=Android
    ...                     deviceName=d05a0282
    ...                     appPackage=br.com.ambev.comodato.callerassinae
    ...                     appActivity=br.com.ambev.comodato.callerassinae.ui.main.MainActivity
    ...                     automationName=UiAutomator2
Close Session
    Close Application


Open Session Assinae
    Set Appium Timeout      30
    Open Application        http://localhost:4723/wd/hub
    ...                     platformName=Android
    ...                     deviceName=d05a0282
    ...                     appPackage=br.com.ambev.comodato.assinaturadigital.staging
    ...                     #appActivity=br.com.ambev.comodato.assinaturadigital.staging.ui.main.MainActivity
    ...                     automationName=UiAutomator2