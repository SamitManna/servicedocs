## v3.10.1 built 2020-01-14

* **bugfix:** change in crontab file to run manage partitions script every 30 minutes
* **bugfix:** change of nagios ai-server.cfg to comment out unnecessary services
* **bugfix:** increase Postgres option max_locks_per_transaction to 1024
* **bugfix:** setting the limits for warning and critical alerts by channel in rabbitmq
* **bugfix:** Platform: /servers/logs do not roll
* **bugfix:** Update to dicom-service.properties to include pre-populated configuration for RabbitMQ IP address to contain RabbitMQ Docker hostname.
* **bugfix:** Mirth enabled pruner
* **bugfix:** Mirth updated max memory
* **bugfix:** Data Manager added Gems for ET script dependencies
* **bugfix:** Data Manager reconnects to RabbitMQ after RabbitMQ restart
* **bugfix:** Data Manager DICOM begin set by earliest of the dicom begin tag (series and study) for capture time
* **bugfix:** Data Manager rad_pacs_metadata update logic changes for DICOM
* **bugfix:** APM reconnects to RabbitMQ after RabbitMQ restart

### Updated Components

* `apm` - v2.0.1
* `data-manager` - v3.8.2
* `openam` - v9.5.3
* `pacs-publisher` - v1.1.1
* `mirth` - v3.5.2
* `nagios` - v3.5.1
* `wildfly` - v12.0.0

### Service Notes

See Service Docs for upgrade instructions

## v3.10.0 built 2019-07-18

* **portal** **new** New version of portal app
* **apm** **new:** Initial version of the Platform API including services for SSO and authorization, data access, app data mutation, HIPAA auditing, and usage logging.
* **improvement** Security fixes for docker components
* **bugfix** Truncating et_scripts before restoring etl handlers to avoid foreign key violation
* **bugfix** Nagios not displaying human readable from address


