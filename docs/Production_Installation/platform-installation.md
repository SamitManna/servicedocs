## ROCC HSDP services and applications deployment instructions


### OS Configuration - Proxy Settings (Optional)

```bash
    vi /etc/environment #add the following four entries:
    export http_proxy="http://[user:passwd@]proxy.server:port"
    export https_proxy="http://[user:passwd@]proxy.server:port"
    export HTTP_PROXY="http://[user:passwd@]proxy.server:port"
    export HTTPS_PROXY="http://[user:passwd@]proxy.server:port"

    #apt.conf
    vi /etc/apt/apt.conf
    #Add below lines
    Acquire::http::Proxy "http://[user:pass@]proxy_host:port";
    Acquire::https::Proxy "[http://user:pass@]proxy_host:port";
```

### Installation

1. Download rocc_hsdp_installer-VERSION.zip to /tmp or any other directory

2. Unzip installer zip file

     unzip rocc_onprem_installer-VERSION.zip -d rocc-hsdp-installer
    
    
3. Update install input parameters


    ```bash
        vi config/config.json
        
        #Update CF Orgname,space,target env and end point URL recevived from HSDP
        "cloud_foundry": {
            "org": "",	
            "space": "",
            "target_env": "",
            "HSDP_LOG_INGESTER_URL": "",
            "HSDPAuditQueryEndpoint": "",
            "HSDP_CSPD_URL": "",
            "HSDP_IDM_URL": "",
            "HSDP_IAM_URL": ""
     
        #Update cloud foundry credentials :
        "cf_credentials": {
            "username": "",
            "password": ""
  
        #Update docker repo credentials : 
        "docker_repo": {
            "username": "",
            "password": "",
                     
        #Update docker version and build version for rocc-db
        "docker_image": 
        {
            "application_version": 
            {
                "rocc_audit_gateway_service": "",
                "rocc_audit_processing": "",
                "rocc_communication": "",
                "rocc_graphql_internal": "",
                "rocc_iam": "",
                "rocc_management": "",
                "rocc_monitoring": "",
                "rocc_nginx": "",
                "rocc_db_build": "",
                "rocc_rbac": "",
                "rocc": "",
                "rocc_service_discovery": "",
                "rocc_twilio_pool": ""
    ```

4. Using sudo or root execute install.sh script


    ```
    bash install.sh
    ```

### Upgrade Instructions
> TODO://

### Reference
> Note: Refer below steps only if individual steps to be executed 

Go it rocc-hadp-installer folder
Added values to keys in config files as shown above.

* To setup a docker

    ```
    ansible-playbook rocc_playbook.yml -t docker_setup
    ```

* To deploy HSDP services

    ```
    ansible-playbook rocc_playbook.yml -t cf_services
    ```

* To deploy db application

    ```
    ansible-playbook rocc_playbook.yml -t cf_db 
    ```

* To deploy iam application

    ```
    ansible-playbook rocc_playbook.yml -t cf_iam
    ```

* To deploy graphql application

    ```
    ansible-playbook rocc_playbook.yml -t cf_graphql
    ```

* To deploy nginx application

    ```
    ansible-playbook rocc_playbook.yml -t cf_nginx
    ```

* To deploy all other applications

    ```
    ansible-playbook rocc_playbook.yml -t cf_app
    ```

