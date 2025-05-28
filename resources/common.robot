*** Settings ***
Library     AppiumLibrary
Library     String

*** Variables ***
${platform_name}    Android
${platform_version}   11
${device_name}      Samsung Note 10
${port}     4723
${REMOTE_URL}   http://localhost:${port}
${udid}     R58MB1M9RSW
${app_package}    com.sec.android.app.popupcalculator
${app_activity}   .Calculator
${automation_name}  Uiautomator2

*** Keywords ***
Open Test App
    Open application
    ...     ${REMOTE_URL}
    ...     automationName=${automation_name}
    ...     platformName=${platform_name}
    ...     platformVersion=${platform_version}
    ...     deviceName=${device_name}
    ...     udid=${udid}
    ...     appPackage=${app_package}
    ...     appActivity=${app_activity}

Close Test App
    Close application


