## v1.0.0-rc12

### Build Version
* rocc-surface-pro-installer: v1.0.0-rc12

### Change log
* **improvment:** Surelock has been upgraded to v2.33.14
* **improvment:** Script improvements - use local installers, user manual link, icons 

### Service Notes

#### Update instructions
1. Exit from Surelock kiosk mode
2. login as ADMIN user (azure AD)
3. Download the build rocc-surface-pro-installer-VERSION.zip from the repository to C:\temp
4. Extract the zip file on C:\temp folder
5. Go to C:\temp\rocc-surface-pro-installer-VERSION
6. Select Update.bat file and right click then select “Properties”, check “Unblock” checkbox under Security and click Apply then Ok
7. Select Update.bat file and right click then select “Run as administrator”
    ```
    Installation begins
    Once the installation is completed, Press any key to continue 
    ```
8. SureLock - Configure Windows Administrator Account window opens
9. Verify that "**Login using existing account**" radio button is selected
10. Verify that valid user credentials are provided and click on **Validate**. 
11. Verify that both the checkbox options are selectec.
    ``` 
    " Disable User Account Control (UAC) prompt " 
    " Autologon on Boot up " 
    ```
12. Click on **Start Kiosk** to proceed.
13. Click **Yes** on display of reboot confirmation window
14. The device enters into Kiosk mode after reboot and the SureLock screen displays.
15. Close the running application using keyboard shortcut (ALT + Fn + F4)
16. Tap/click 5 times anywhere on the screen to enter into SureLock Settings. The Password window displays.
17. Enter the Admin password
18. Click OK to proceed. The Main Menu displays
19. Click on **Import/Export Settings**
20. Click **Import From File**
21. Select **C:\Users\SureLock.settings** path and Click **OK**
22. Click **OK** once import is successful, Click **Done** to return to the Main Menu.
23. Click **Done** to home screen. Verify the Surelock home screen icons are displayed 
24. Click Reboot icon on taskbar to reboot the device. 
25. Click Yes to reboot
26. Once the reboot is completed, Rocc application and Microsoft teams application will be auto launched and keep the Rocc application page open


## v1.0.0-rc03

### Build Version
* rocc-surface-pro-installer: v1.0.0-rc03

#### Change log
* initial release

### Service Notes
* refer to install instructions

