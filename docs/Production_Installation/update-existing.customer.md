### Run the command to update existing items

> python rocc_service_cli.py

```
    ====================ROCC Service CLI: START====================
    ===============================================================

                            ROCC Service CLI

    ===============================================================
    Choose the update you want to proceed with:
                    1. Customer Data insertion [1]
                    2. Send user invitation mail [2]
                    3. Create/Update role permission mapping [3]
                    4. Add DEVICEROLE to existing devices [4]
                    5. Update EULA documents for customer [5]
                    6. Update Email templates for customer [6]
                    7. Update Vault values [7]
                    8. Provision new Rooms [8]
                    q. Quit [q]
    ===============================================================
    Enter ["1", "2", "3", "4", "5", "6", "7", "8" or "q"]:
```

#### Update options

1. Customer Data insertion
    - It is used for complete customer data insertion
    - It uses both excel sheet(*resources/ROCC_Data_Template.xlsx*) and _config.ini_
    - Follow the steps interactively
2. Send user invitation mail
    - It is used for creating users in HSDP and sending emails
    - It uses both excel sheet(*resources/ROCC_Data_Template.xlsx*) and _config.ini_
    - Follow the steps interactively
3. Create/Update role permission mapping
    - This option is used to update R-BAC for the customer
    - It uses both excel sheet(*resources/ROCC_Data_Template.xlsx*) and _config.ini_
    - Follow the steps interactively
4. Add *DEVICEROLE* to existing devices
    - This option was created to update existing customers with a new role: _DEVICEROLE_ for build updates to RC8 (Ignore this option if build is already RC8+)
    - It uses both excel sheet(*resources/ROCC_Data_Template.xlsx*) and _config.ini_
    - Follow the steps interactively
5. Update *EULA* documents for customer
    - This option is used to update EULA content for seleted customer
    - It uses only _config.ini_
    - Follow the steps interactively
    - Run this for all the customers in the event of new EULA content
6. Update *Email Templates* for customer
    - This option is used to update EMAIL Template content for seleted customer
    - It uses only _config.ini_
    - Follow the steps interactively
    - Run this for all the customers in the event of new EMAIL Template content
7. Update *Vault* values

    This option is used to update Vault content
        
        ===============================================================

        Choose the vault update you want to proceed with:

            1. Customer-specific Vault updates [1]

            2. Global Vault updates [2]

            3. To go back to main menu [b]
           
            4. To quit [q]

        ===============================================================

        Enter ["1", "2", "b" or "q"]:

        Option 1: Customer-specific Vault updates
        - Customer-specific vault values can be updated
        - It uses only _config.ini_
        - There is a list of recommended keys to update, please use only those to update
            ===============================================================
            Starting process - Vault updates for customer: <CustomerName>
            ===============================================================

            Following keys are available for updates:
                - consoleIpAddressAndPort
                - sessionIdleTimeout
                - sessionIdleTimeoutDevice
                - adminManualPath
                - userManualPath
                - customerAnalyticsLogConsent

            Enter the Vault key you wish to update [key]:
        - Follow the steps interactively

        Option 2 : Global Vault updates
        - Global vault values can be updated
        - It uses only _config.ini_
        - There is a list of recommended keys to update, please use only those to update
            ===============================================================
            Starting process - Vault updates for vault path: AuthCredentials
            ===============================================================

            Following keys are available for updates:
                - insightsKey
                - logProductKey

            Enter the Vault key you wish to update [key]:
        - Follow the steps interactively

8. Provision new *Rooms*
    - This option is used to provision new rooms directly for existing customer
    - It uses both excel sheet(*resources/ROCC_Data_Template.xlsx*) and _config.ini_
    - Follow the steps interactively

