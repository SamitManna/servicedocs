## IT Operations Request for ROCC

### VM and Workstations 

| Category | Ask |
|------------|-------------|
| VM for ROCC application server  | OS Ubuntu 18.04, 8 core Core, RAM 32GB, Storage 200GB |
| Browser | Chrome Version:  |
| Inetrnet Access | Yes |
| Workstation | Windows 10, quad core, 16 GM RAM, Storage 256 GB, running Chrome browser​ |
| Allocate DNS| Yes |

### IT Networking and Security 

| Category          | Ask |
|-------------------|-------------|
| IT Networking     |  Information Security and Privacy Questionnaire ​|
| IT Networking     |  Provide Detailed Network Diagram​ ​|
| IT Networking     |  All required material for conducting Nexpose scan on Ubuntu ​ ​|
| IT Networking     |  Guidelines for Software penetration testing​ ​|
| IT Networking     |  Provide CA signed certificate for use in VM​ ​|
| IT Networking     |  Information Security and Privacy Questionnaire ​|
| Security          |  Agreement to use Philips HIPPA compliant, GDPR compliant, HITRUST compliant HealthSuite Digital Platform Cloud services over internet​ ​|
| Security  		|  Identify LAN and WAN capacity​​|
| Security  		|  Help with Philips Switch Burn-out room test​ ​|
| Security  		|  Allocate Network ports and IP addresses ​|

### Biomed

| Category | Ask |
|------------|-------------|
| Biomed |  Philips will provide monitors  for lead tech/charge tech in command center. Need Biomed’s inputs on Equipment Tagging and security clearance on all hardware devices​ ​|


### Physical Ports

| Category | Ask |
|------------|-------------|
| @ Modality Location|  1 additional Ethernet port  at least 100 Mbps capacity ​|
| @ Tech Seat at the command center |  2 Ethernet ports at least 100 Mbps acapcity |
| Additional Port |  1 Ethernet port to be made available to connect the Philips management appliance – can be co-located with ’s switching infrastructure ​​|
| IP Address | Block of static IP addresses required for the Philips devices that will be plugged into the network |
| Port Reachability​ | Devices connected to the above ports should be reachable from each other​ |


### Port Reachability 

| Category | Ask |
|------------|-------------|
| Protocols and ports need to be enabled​ | IP Unicast – Port 3389 for Rx to Tx communications (Allow TCP and UDP traffic on this port)​ |
| Protocols and ports need to be enabled​ | UDP – Unicast and Multicast for management (Port 39150) |

The ROCC application server (running on  VM) and client devices should have access to internet over LAN and Wi-Fi​


### Firewall Rules

| Category | Ask |
|------------|-------------|
| Enable firewall for Inbound and outbound for the static IP addresses| 54.172.60.0 - 54.172.61.255 , 34.203.250.0 - 34.203.251.255 (54.172.60.0/23, 34.203.250.0/23) |
| Allow UDP Port range| 10,000 - 20,000 |

### Power Outlets

| Category | Ask |
|------------|-------------|
| Modality location| 1 additional power outlet to which an power extender can be connected for serving all ROCC devices ​|
| Command centre tech location| 1 additional power outlet to which an power extender can be connected for serving all ROCC devices |

### Space

Additional space at each modality location, to place Philips ROCC client device and connectivity devices. ​
Optional: Space designated for setting up a command centre where command centre techs will be located

> **Note:** Philips will supply the ROCC software, and the devices including additional monitors and keyboards to be placed at command center location

