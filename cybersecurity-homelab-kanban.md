---

kanban-plugin: board

---

## Backlog

- [ ] Create standardized headers for each device documentation so structure is consistent #docs
- [ ] Add syslog forwarding from edge to wazuh (this creates hole in firewall, make sure to justify)
- [ ] Suricata wazuh agent can still fail on boot up, easily rebooted but worth investigating why
- [ ] Update asset table, topology, objectives etc. to accommodate WSUS server #docs #wsus #networking
- [ ] Research on WSUS Server, how they function and their role #research #wsus
- [ ] Create WSUS Server and initial configuration #setup #wsus
- [ ] Deploy ELK-SIEM01 #setup #elk #siem


## Doing

- [ ] Build On Attack simulation + detection write-up: This should be the pre cursor to the LAN_NET attack. Here we will abuse a purposefully vulnerably designed agentic ai application. #red-team #detection #docs
- [ ] Attack simulation + detection write-up: simulate high severity CVE from ATTACKER01, document what Wazuh and Suricata detected, and how to remediate. Scope it to just be in LAN_NET and assume breach (i.e. attacker01 is already a host in lan_net) #red-team #detection #docs
- [ ] Add bastion host in dmz
- [ ] Enrich and properly do the documentation for nessus. Also go over the findings of current detection systems. Did it find nessus doing the scans? What else did it find? Any other false positives etc.


## Done

- [ ] Update high-level design to reflect changes in scope @{2026-04-03}
- [ ] Enhance and fixed the formatting of AGENTICAI-01 documentation. @{2026-04-03}
- [ ] Do a test run of the agentic ai exploit @{2026-04-03}
- [ ] Update the EDGE-RTR01 documentation section about wazuh and suricata. @{2026-04-01}
- [ ] Deply the vulnerable ap on AGENTICAI-01, create short documentation on deployment @{2026-04-01}
- [ ] Develop the vulnerable agentic ai application 
	@{2026-03-31}
- [ ] Add firewall rules permitting agent traffic from edge to wazuh @{2026-03-29}
- [ ] Add wazuh-agent and suricata to edge rt01 @{2026-03-29}
- [ ] Run Nessus scan across LAN_NET, identify high severity CVEs @{2026-03-25}  #nessus #vulnerability-management
- [ ] Create NESSUS-SCAN01 and setup with basic configuration @{2026-03-25}  #setup #nessus
- [ ] Configure Suricata to listen to the bridge. FIrstly, in NIDS mode only, will change to NIPS later. @{2026-03-24}
- [ ] Set up dedicated Suricata VM (Ubuntu Server 22.04) as transparent network tap on LAN_NET and install Wazuh Agent. This is the baseline before we actually add suricata rules and configure the yaml.@{2026-03-23}  #setup #suricata #nids #networking
- [ ] Update network topology to reflect changes in architecture as well as update high level design to move redundant and future additions into roadmap @{2026-03-23}
- [ ] Write documentation on how I got pfsense to finally forward logs to wazuh and what was the issue. @{2026-03-21}
- [ ] Fix the custom alerts for wazuh pfsense logs, its firing the builtin one somehow. Investigate. @{2026-03-19}
- [ ] Add syslog forwarding from pfsense to wazuh @{2026-03-18}
- [ ] Install sysmon on pc01 @{2026-03-17}
- [ ] Deploy WAZUH agent on PC01 @{2026-03-17}
- [ ] Create domain-controllers, windows-baselin and linux-baseline group on wazuh @{2026-03-16}
- [ ] Configure the windows-baseline group wazuh agents to also ingest sysmon logs @{2026-03-16}
- [ ] Deploy WAZUH agents on DC01 @{2026-03-15}
- [ ] Install Sysmon on DC01 @{2026-03-15}
- [ ] Create WAZUH-SIEM01 machine and basic configuration @{2026-03-14} #setup #wazuh #siem
- [ ] Create WAZUH-SIEM01 documentation @{2026-03-14} #docs #wazuh #siem
- [ ] Add reverse lookup zone in DC01 + documentation (required for SIEM phase) #config #dc01 #dns #siem @{2026-03-12}
- [ ] Add PFSENSE-FW01 as DNS forwarder to DC01 + documentation for these steps #config #dc01 #dns @{2026-03-12}
- [ ] Change PFSENSE-FW01 domain name before adding as dns forwarder to dc01 #config #pfsense #dns @{2026-03-12}
- [ ] Add documentation to DC01 for handling PC01 joining the domain + troubleshooting if passwords need to be reset #docs #dc01 #ad @{2026-03-12}
- [ ] PC01 documentation #docs #pc01 @{2026-03-12}
- [ ] Setup PC01, join him to domain, basic configuration #setup #pc01 #ad @{2026-03-12}
- [ ] Add to documentation of pfsense for the additional configuration #docs #pfsense @{2026-03-12}
- [ ] Configure pfSense to be a dns forwarder and make sure its dhcp leases have the dns server as dc01 ip #config #pfsense #dns @{2026-03-12}
- [ ] OU structure documentation #docs #dc01 #ad @{2026-03-12}
- [ ] OU structure, domain admin account, standard user account, verify DNS before, enable recycling bin #config #dc01 #ad #dns @{2026-03-12}
- [ ] Update network topology to accomodate addition of WSUS server and ELK stack #docs #networking @{2026-03-12}
- [ ] Add documentation for bashscript to start and stop vms #docs #automation @{2026-03-11}
- [ ] Create bash scripts to more easily launch vms and close vms #scripting #automation @{2026-03-11}
- [ ] Create the documentation for the initial PFSENSE-FW01 configuration #docs #pfsense @{2026-03-10}
- [ ] Create Windows Server 2019 DC01 with basic configuration i.e. most barebones AD setup #setup #dc01 #ad @{2026-03-07}
- [ ] Create the documentation for the initial DC01 configuration #docs #dc01 @{2026-03-07}
- [ ] Create pfSense virtual machine and do basic configuration #setup #pfsense #networking @{2026-03-05}
- [ ] Setup ATTACKER01 Kali VM with basic configurations #setup #attacker @{2026-03-03}
- [ ] Setup EDGE-RTR01 Router VM with basic configurations #setup #edge-rtr #networking @{2026-03-03}




%% kanban:settings
```
{"kanban-plugin":"board","list-collapse":[false,false,false],"show-checkboxes":false,"move-dates":true,"move-tags":true,"lane-width":372}
```
%%