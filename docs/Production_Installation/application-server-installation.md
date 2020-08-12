## ROCC Application Server Installation


#### OS Configuration - Proxy Settings (Optional)

```bash
    #set proxy in /etc/environment and /etc/apt/apt.conf

    vi /etc/environment 
    #add the following four entries:
    export http_proxy="http://[user:passwd@]proxy.server:port"
    export https_proxy="http://[user:passwd@]proxy.server:port"
    export HTTP_PROXY="http://[user:passwd@]proxy.server:port"
    export HTTPS_PROXY="http://[user:passwd@]proxy.server:port"

    #apt.conf
    vi /etc/apt/apt.conf
    #add below lines
    Acquire::http::Proxy "http://[user:pass@]proxy_host:port";
    Acquire::https::Proxy "[http://user:pass@]proxy_host:port";
```


### Installation instructions

* **step 1**: Download rocc_onprem_installer-VERSION.zip to /opt


* **step 2**: Unzip installer zip file

```
    unzip rocc_onprem_installer-VERSION.zip -d rocc-onprem-install

```

* **step 3**:  Update install input parameters

```
        vi config/console_server_config.json
        
        #Update docker repo credentials
        #Credentials used for https://console.na1.hsdp.io/  :
        docker_repo_credentials": {
            "username": "",
            "password": ""
            
        #Update docker images details :
        "docker_image": {
        "console_service": {
            "repository_name": "docker.na1.hsdp.io",
            "file_path": "client-PD-ROCC_prod/philips/rocc_console_service",
            "docker_tag": "",
            "container_name": "rocc_console_service"
        }
        },
        #Example : 
        #"docker_image": {
        #     "console_service": {
        #         "repository_name": "docker.na1.hsdp.io",
        #         "file_path": "client-PD-ROCC_prod/philips/rocc_console_service",
        #         "docker_tag": "v0.0.1-devPR551",
        #         "container_name": "rocc_console_service"
        #     }
        # },
    
        # Update application end point URL's
        "application_config": {
            "graphql_url": "",
            "audit_url": "",
            "base_url": "",
            "log_ingestor_url": "",
            "appinsights_key": "",
        },
        #Example :
        #"application_config": {
        #      "graphql_url": "https://radnet003-graphql.cloud.pcftest.com/v1/graphql",
        #      "audit_url": "https://rocc-audit-gateway-service-dev.cloud.pcftest.com/philips/rocc/Audit",
        #      "base_url": "https://radnet003-rocc.cloud.pcftest.com",
        #      "log_ingestor_url": "https://logingestor2-client-test.us-east.philips-healthsuite.com/core/log/LogEvent",
        # },   "appinsights_key": 5dcdaaf8-b4f6-4bb0-9a53-c6efd3410a3e
                
        # Update container environment variable: 
        #   * Get role ID and secre ID information using 
        #   * cf env rocc-iam-environemnt  and go to hsdp vault section
        "container_env": {
            "endpoint": "https://vproxy.us-east.philips-healthsuite.com",
            "role_id": "",
            "secret_id": "",
            "proxy_IP": "",
            "proxy_Port": "",
            "no_proxy": "",
            "org_name": "",
            "console_port": "8447"
        },
        #Example: 
        #"container_env": {
        #    "endpoint": "https://vproxy.us-east.philips-healthsuite.com",
        #    "role_id": "10165b9b-be93-a2d9-29f1-0a4bffdbab3c",
        #    "secret_id": "b6960cb7-f30f-a43d-7580-a8f4bc65c0e9",
        #    "proxy_IP": "185.46.212.97",
        #    "proxy_Port": "9480",
        #    "no_proxy": "161.85.19.46",
        #    "org_name": "radnet003",
        #    "console_port": "8446"
        #},
    
        #To Configure Ubuntu OS for CIS Compliant (Optional)
        "Ubuntu_CIS": "False",
        #By default status is set to false. If at Hospital/Site OS need to be CIS compliant then set value as true
        #Example:
        #"Ubuntu_CIS": "True",
        
        #Update Azure Workspace ID and Secret Key:
        "azure_config": {
            "WORKSPACE_ID": "",
            "PRIMARY_KEY": "",
            "HOSPITAL_SITE_NAME":""
        }
        #Exmaple:
        #"azure_config": {
        #    "WORKSPACE_ID": "406d1687-59be-4a6b-a70d-64ee5970cb02",
        #    "PRIMARY_KEY": "vlol/nHgtF+CQ2r3IjuPwbDblbMAJUWgTonje1mFV8RJZ1iLKP1r6bz5Rcup4uhXujy3ELpTc/RdJOzCQTVsPw==",
        #    "HOSPITAL_SITE_NAME":"Radnet" //as per naming conventions
        #}
```

* **step 4**: Using sudo or root execute install.sh script

```
    bash install.sh
    Enter sudo password to continue 
    password:
```

### Steps to push healthcheck logs to azure

* **step 1:** Copy healthcheck script from build to /opt. Open script and replace Hospital with Site name

```
    cp -p /opt/rocc_onprem_installer/is_live.sh /opt/
```

* **step2:** Add root cronjobs

```
    sudo su
    crontab -e
    /1 * * * * /home/opt/is_live.sh
    0 23 * * * /bin/echo > /var/log/boxilla_health.log
```
