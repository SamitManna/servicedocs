
### Preconditions

1. Python needs to be installed, recommended version 3.7.3 + (Refer: <https://www.python.org/downloads/>)
2. Download rocc-ops-VERSION.zip to a location
3. Extract the zip file

### Setup

1. In the terminal Navigate to Scripts directory: rocc-ops-VERSION
2. Modify the customer specific configurations with relevant values:
    
    - update Configuration in **configs/config.ini
    - Update Excel sheet with relevant customer data:
        resources/ROCC_Data_Template.xlsx

3. Add proxy, if applicable
4. Install dependent packages:

    ```
        pip install -r requires.txt
    ```

### Customer On-boarding

#### Setup infrastructure

```
    #Run the command
    python rocc_customer_infra_setup_cli.py
    #Choose **1** to initiate customer infrastucture setup
    #Provide **y** to proceed
    # For the following question:

    Do you want to create Root-Org ["yes" / "y" / "no" / "n"]:

    #Provide *y* or *yes*, __ONLY__ if you are onboarding __FIRST__ customer on ROCC platform environment

    #Follow the steps interactively
    #The output is available at logs/<customer_name>.txt
```

#### Setup CF Org for new customer

    1. Create proxy route for new customer in CF CLI
        
        ```
         cf map-route rocc-nginx-<cf_space_name> cloud.pcftest.com --hostname <customer_name>-rocc
        ```

    2. Create a new twilio sub-account for new customer in CF CLI

        ```
            cf create-service hsdp-twilio subaccount rocc-twilio-<cf_space_name>-<customer_name>
            cf bind-service rocc-twilio-pool-<cf_space_name> rocc-twilio-<cf_space_name>-<customer_name>
            cf restage rocc-twilio-pool-<cf_space_name>
        ```

    3. Setup R-BAC infra, __ONLY__ if you are onboarding __FIRST__ customer on ROCC platform environment.
        
        ```
            python create_new_permissions.py
        ```
        >**Note:** (Wait for 30 mins from its corresponding org creation)

#### Populate Customer data 

```
    python rocc_service_cli.py
    #Choose **1** to initiate customer data load
    #Follow the steps interactively
```
