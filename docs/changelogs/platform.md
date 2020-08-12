## v1.0.0-rc12
### Build Version
* ROCC: v1.0.0-rc12
* rocc-onprem-installer: v1.0.0-rc12
* rocc-console-service: v1.0.0-tc12
* rocc-surface-pro-installer: v1.0.0-rc5

#### Software Components
* BlackBox
    * Boxzilla - v3.5.2
    * RemoteApp - v1.3.3
    * Firmware - v5.2.40
    * Glide-and-switch-sw - v1.0
    * Freedom Switch - 2.0.4

### Service Notes

#### Update instructions
1. Download the rocc-ops-v1.0.0-rc12.zip 
    * For provisioning new rooms to existing customer follow the below steps:
        - Note, update __config.ini__ as recommended (no additional changes needed)
        - Update customer excel sheet with new rooms (You can delete/retain older rooms)
        - Run the command
            > _**python rocc_service_cli.py**_
        - Choose the __8__ to provison new rooms
        - Follow the steps interactively

## v1.0.0-rc11 - 16Jul2020
### Build Version
* ROCC: v1.0.0-rc11
* rocc-onprem-installer: v1.0.0-rc11
* rocc-console-service: v1.0.0-tc11
* rocc-surface-pro-installer: v1.0.0-rc5

#### Software Components
* BlackBox
    * Boxzilla - v3.5.2
    * RemoteApp - v1.3.3
    * Firmware - v5.2.40
    * Glide-and-switch-sw - v1.0
    * Freedom Switch - 2.0.4

### Service Notes
#### Pre-Check

#### Update instructions

* Upgrade ROCC services with RC11 version

* Console service upgrade for all the customer
```
    cd /opt/docker-compose
    cp docker-compose.yaml docker-componse.yaml.bkp
    docker-componse down
    #update following values in docker-compose.yaml
    vi docker-compose.yml
    #replace RC10 with RC11 
    #run below command to update the container
    docker-compose up -d
```

### Change log
**Bug-fixes**:

* Intermittent Issue while accessing Twilio APIs
* 97062-Pre-Market: Expert users are not able to choose a command center when the corresponding site does not have any rooms associated
* 97093-Device: Room list is not displayed under rooms
* 86863-In Kiosk mode, we need to add to the network(wifi) everytime when reboot the machine
* 89840-Admin_Manage location and contacts, the type of contact as 'Scheduler'/'Frontdesk' is not specified on the UI
* 93017-Kibana logs_console logs are not found in kibana for preprod env(https://siteeval01-rocc.cloud.pcftest.com/#/)
* 93610-AV_Call: When two users are on AV call, the site name displayed for each contact under contact list must have hover option to display full address of the user.
* 94227-Configuring User first name and last name in invitation mail
* 94719-Admin_Edit_User: Place the cursor on First name, last name or email field and press enter, then an active user gets deactivated.
* 95280-Emerald app_While connecting to dual head console, the image looks elongated on Y axis
* 95543-View_Console: Multiple simultaneous views must not happen and incorrect view label is shown.
* 95549-View_Console: When EU clicks on start view console , then incognito view mode(3 dots) must be disabled immediately.
* 95601-AV_Call_Edit_Console: Authorize label and incoming AV call notification over lap on each other on device screen.
* 95755-Device_Call: Outgoing call to EU must have location details too just like it appears on an incoming call.
* 96004-RBAC_API_UserRoleMapping_Deletion of roles not happening, success response received for Delete APIs for incorrect userId and role
* 96277-Certificate Issues
* 96462-AV_Call: Audio input source drop down is not displayed properly when setting from AV call is clicked.
* 96849-Email_Template: User Activation mails received have Last Name , First Name instead of First Name, Last Name in order.
* 96850-About page address incomplete
* 96891-View_Console: View console label disappears for few seconds when new Edit console request is made.
* 96905-View_Console: Incorrect pop up message is displayed when View console session is initiated by Expert user for first time.
* 97047-Edit/View_Console: When EU and tech are on AV call and if EU switches from 'Without hardware' to 'With hardware' , only View console icon is enabled.
* 97065-Modality filter is not functioning properly when a different site is chosen
* 97081-The viewing label is displayed at the device end even after the user's session is expired during a view console
* 97096-Edit console: when the console request has got timed out the EU clicks on view for another room and pop up appearing as "do u want to stop viewing the timed-out room and start viewing the new room'


## v1.0.0-rc10 - 10Jul2020
### Build Version
* ROCC: v1.0.0-rc10
* rocc-onprem-installer: v1.0.0-rc10
* rocc-console-service: v1.0.0-tc10
* rocc-surface-pro-installer: v1.0.0-rc5

#### Software Components
* BlackBox
    * Boxzilla - v3.5.2
    * RemoteApp - v1.3.3
    * Firmware - v5.2.40
    * Glide-and-switch-sw - v1.0
    * Freedom Switch - 2.0.4

### Changelog
#### New/Improvments

* Video Call- Peer to Peer video calling functionality with multi camera support
* AV call stability
* UI/UX improvement –Desktop and Tablet to make it compliance with Philips Design
* EULA statement update – Draft version of EULA display during customer onboarding
* Edit and View console workflow stability
* Standardization of customer communication email templates to align with Philips Design
* Admin workflow improvement – fixed workflow issues
* Security fixes
* Performance Improvement – Improved  end to end workflow performance to have better customer experience
* Migration from Hasura (Open Source) to Hasura Pro for better management
* Feedback to the user on non supported browsers – Support only Chrome browser
* Pre-Market defect fixes
* Deployment improvements
* Logging improvements for better troubleshooting and Analytics
 
#### Bug Fixes

* Unable to deploy console service in non-proxy environment
* Admin_User management of a user in mixed mode(Through Excel sheet & UI) is not consistent
* Call not established between technologist and expert user
* Certificate status keeps changing between Valid /non valid
* Multiple disconnect api calls are made on call end or logout scenarios
* Audio setting gets disabled: Graceful exit when audio devices are not selected
* Admin_Screen: Emails are not sent to some of the users after Re-invite.
* Presence of the user is sometimes not getting updated on the device which is already logged. Room presence is always shown busy

### Service Notes
#### Pre-Check

#### Update instructions
#### Pre-Check
1. Download the rocc-ops-v1.0.0-rc10.zip
2. Get the Customer config.ini file
3. Verify if that the customer config.ini file is uptodate with the latest changes
4. Verify the the Customer Onboarding excel sheet is as per v1.0.0-rc10 release 

#### Update instructions
1. Update Graphql       
    * Get the environment variable of respective environmenmt
    
        `` cf env <rocc-graphal-internal-qa> ``
 
    * Update graphql-manifest file from the env in step 2
       * Modify the applicaiton name etc in manifest file, this should be same as your environment app name.
 
    * Create graphql key
        * login to https://accounts.hasura-apm.rocc.live/ and create new project
        * copy the key when new project is created and add it to env HASURA_GRAPHQL_PRO_KEY
        * Also add another env HASURA_GRAPHQL_PRO_ENDPOINT: https://hasura-apm.rocc.live
        (Add this to manifest file created in step 2)
 
    * Deploy the graphql
        cf push -f manfiest.yaml
 
    * Run Import Meta-data script for graphql
	
2. Nginx Upgrade
    * cf delete rocc-nginx-<appname>
    * cf add-network-policy rocc-nginx-<appname> --destination-app rocc-graphql-<appname> --protocol tcp --port 8080
    * cf restage rocc-nginx-<appname>
    * cf map-route rocc-nginx-<appname> cloud.pcftest.com --hostname <customer-name>
    * Note: The nginx docker image is modified to alpine

3. DB Updates
    * *table:* public.metasites
         *new column:* name , *type:* text, *default:* NA
    * table: rocc.remote_facility
         new column: registered_count , type: integer, *default: 0

	
4. Update EMAIL, EULA templates for all existing customers
    * In rocc-ops, update the config.ini to corresponding customer
    * EMAIL template updates:
        * Run the rocc_service_cli.py by running the below command 
            ```python rocc_service_cli.py```
            ```
                1. Choose option "6" on the prompt to update EMAIL Templates for customer
                2. Confirm to proceed with [Y, y]
                3. Enter root-org admin credentials when prompted
            ```
	* EULA updates:
        * Run the rocc_service_cli.py by running the below command 
            ```python rocc_service_cli.py```
            ```
                1. Choose option "5" on the prompt to update EULA documents for customer
                2. Confirm to proceed with [Y, y]
            ```
    * Update for all the customers so that the latest EMAIL-Temaplate and EULA content is refected everywhere 

5. Add DEVICEROLE in existing orgs in RBAC
    * Open excel sheet of existing orgs
    * Update role-permission-mapping sheet with latest actions
    * Run the rocc_service_cli.py by running the below command 
            ```python rocc_service_cli.py```
    * Choose option **3** when its promted to update value
        ```
            Choose the update you want to proceed with:
            1. Update Vault values [1]
            2. Send user invitation mail [2]
            3. Create/Update role permission mapping [3]
            4. Add DEVICEROLE to existing devices [4]
            Enter ["1", "2", "3" or "4"]: 4
        ```
    * Enter Admin credentials when script will prompt for it
    * User will get message that role permission mappings are created successfully
        ```Role Permission mappings are created successfully....```
    
    ***Add Newly created role to existing devices***
    * Run the rocc_service_cli.py by running the below command 
            ```python rocc_service_cli.py```
    * Choose option **4** when its promted to update value
        ```
            Choose the update you want to proceed with:
            1. Update Vault values [1]
            2. Send user invitation mail [2]
            3. Create/Update role permission mapping [3]
            4. Add DEVICEROLE to existing devices [4]
            Enter ["1", "2", "3" or "4"]: 4
        ```
    * Enter Admin credentials when script will prompt for it
    * User will get message that role permission mappings are created successfully
        ```User Role Mappings are created successfully....```
    
    ***Take latest config.ini.New key PASSWORD_EXPIRY_DAYS is added in DEFAULT Section. 

6. Add new roles for existing orgs in RBAC
    * Execute create_new_permissions.py script to add newly created permissions in that space
    * Open excel sheet of existing orgs
    * Update role-permission-mapping sheet with latest actions
        ```
            **Role**	            **Resource**	                             **Actions**
            ADMINROLE	                ADMIN	        USER_ADD,USER_EDIT,USER_READ,USER_DELETE,LOCATION_EDIT,LOCATION_READ,ROOM_EDIT,ROOM_READ
            EXPERTUSERROLE	        CONSOLE	        VIEW,EDIT
            EXPERTUSERROLE	        CALL	        WEB_TO_WEB,WEB_TO_PHONE,ADD_PARTICIPANT,HYBRID_ROCC_CALL,VIDEO_CALL,DESKTOP_FULL_SCREEN
            EXPERTUSERINCOGNITOROLE	CONSOLE	        VIEW,EDIT,VIEW_INCOGNITO
            EXPERTUSERINCOGNITOROLE	CALL	        WEB_TO_WEB,WEB_TO_PHONE,ADD_PARTICIPANT,HYBRID_ROCC_CALL,VIDEO_CALL,DESKTOP_FULL_SCREEN
            PROTOCOLMANAGERROLE	        CONSOLE	        VIEW,EDIT,EDIT_WITHOUT_AUTHORIZATION
            PROTOCOLMANAGERROLE	        CALL	        WEB_TO_WEB,WEB_TO_PHONE,ADD_PARTICIPANT,HYBRID_ROCC_CALL,VIDEO_CALL,DESKTOP_FULL_SCREEN
            TECHNOLOGISTROLE	        CALL	        WEB_TO_WEB,WEB_TO_PHONE,ADD_PARTICIPANT,HYBRID_ROCC_CALL,VIDEO_CALL
        ```
    * Run the rocc_service_cli.py by running the below command 
            ```python rocc_service_cli.py```
    * Choose option **3** when its promted to update value
        ```
            Choose the update you want to proceed with:
            1. Update Vault values [1]
            2. Send user invitation mail [2]
            3. Create/Update role permission mapping [3]
            Enter ["1", "2" or "3"]: 3
        ```
    * Enter Admin credentials when script will prompt for it
    * User will get message that role permission mappings are created successfully
        ```Role Permission mappings are created successfully...```

7. Vault updates
    * Run the rocc_service_cli.py by running the below command 
        ```python rocc_service_cli.py```
           
    * Choose option **1** when its promted to update value  
            ```
            Choose the update you want to proceed with:
            1. Update Vault values [1]
            2. Send user invitation mail [2]
            Enter ["1" or "2", "3"]: 1
            ```
    * Script will prompt for user to enter Vault Key
            
        Enter the Vault key you wish to update [key]: **adminManualPath** & Enter
                        
        Script will prompt for user to enter Vault value
        
            Enter the Vault value you wish to update [value]: **https://rocc.file.core.windows.net/rocc/Manuals/Radiology%20Operations%20Command%20Center%20Admin%20Manual%20V1.0.pdf?st=2020-06-15T06%3A11%3A41Z&se=2025-06-16T06%3A00%3A00Z&sp=rl&sv=2018-03-28&sr=f&sig=3Q6jNpnyzkT2zoJA%2BvjwPouskXE1MFJz2njuoIaR4bw%3D**
            
        User will get message that vault values upated successfully as below
            
            **Vault values updated Successfully**
            
    * Repeat the above steps under Vault updates, for below Valut Key and values for each customer
        
           **userManualPath** Default value: **https://rocc.file.core.windows.net/rocc/Manuals/Radiology%20Operations%20Command%20Center%20User%20Manual%20V1.0.pdf?st=2020-06-16T06%3A29%3A25Z&se=2025-06-17T06%3A00%3A00Z&sp=rl&sv=2018-03-28&sr=f&sig=CtDY0mKiBGxmOC3fKK3%2BKpbEzuhdtlZ0iujYtPbwUeo%3D**
		   
		       **encryptionValue** Default value: **9D1F0F050D4216BFCA7DA70**
		   
           **customerAnalyticsLogConsent** Default value: **true** , for actual customer we need to take their consent   
  
8. Instrumentation Key 
 
     Verify the **APPINSIGHTS_INSTRUMENTATIONKEY** environment variable updated in all the application environment variables, If not please set the variable

9. Update On-Prem ROCC Application server (Console Service)
    ```
        cd /opt/docker-compose
        cp docker-compose.yaml docker-componse.yaml.bkp
        docker-componse down
        vi docker-componse.yaml
        #update following values in docker-compose.yaml
        #   replace RC3 with RC11
        #   Add proxy.schema as environment Variable in docker-compose.yaml
        #   Update proxy_ip and proxy_port to relevant values based on the VM proxy settings
        #run below command to update the container
        docker-compose up -d
    ```    

## v1.0.0-rc3 - 29Apr2020
### Build Version
* ROCC: v1.0.0-rc02
* rocc-onprem-installer: v1.0.0-rc03
* rocc-console-service: v1.0.0-tc03
* rocc-surface-pro-installer: v1.0.0-rc03

#### Software versions:
* BlackBox Boxilla SW  -  v3.5.1
* BlackBox Firmware - v5.2.40
* BlackBox Emarald Remote App - v1.1.0
* BlackBox Glide & Switch Software - v01.10
* Surelock - v2.32

### Changelog:
* Initial Release
