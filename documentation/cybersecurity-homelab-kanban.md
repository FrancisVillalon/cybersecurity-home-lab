---

kanban-plugin: board

---

## Backlog

- [ ] Update asset table, topology, objectives etc. to accommodate WSUS server #docs #wsus #networking
- [ ] Create WSUS Server and initial configuration #setup #wsus
- [ ] Research on WSUS Server, how they function and their role #research #wsus
- [ ] Create Windows Client Machine PC01 #setup #pc01
- [ ] Create standardized headers for each device documentation so structure is consistent #docs


## Doing

- [ ] Deploy WAZUH agents on DC01, PC01
- [ ] Install Sysmon on DC01


## Done

- [ ] Setup EDGE-RTR01 Router VM with basic configurations #setup #edge-rtr #networking @{2026-03-03}
- [ ] Setup ATTACKER01 Kali VM with basic configurations #setup #attacker @{2026-03-03}
- [ ] Create pfSense virtual machine and do basic configuration #setup #pfsense #networking @{2026-03-05}
- [ ] Create the documentation for the initial DC01 configuration #docs #dc01 @{2026-03-07}
- [ ] Create Windows Server 2019 DC01 with basic configuration i.e. most barebones AD setup #setup #dc01 #ad @{2026-03-07}
- [ ] Create the documentation for the initial PFSENSE-FW01 configuration #docs #pfsense @{2026-03-10}
- [ ] Create bash scripts to more easily launch vms and close vms #scripting #automation @{2026-03-11}
- [ ] Add documentation for bashscript to start and stop vms #docs #automation @{2026-03-11}
- [ ] Update network topology to accomodate addition of WSUS server and ELK stack #docs #networking @{2026-03-12}
- [ ] OU structure, domain admin account, standard user account, verify DNS before, enable recycling bin #config #dc01 #ad #dns @{2026-03-12}
- [ ] OU structure documentation #docs #dc01 #ad @{2026-03-12}
- [ ] Configure pfSense to be a dns forwarder and make sure its dhcp leases have the dns server as dc01 ip #config #pfsense #dns @{2026-03-12}
- [ ] Add to documentation of pfsense for the additional configuration #docs #pfsense @{2026-03-12}
- [ ] Setup PC01, join him to domain, basic configuration #setup #pc01 #ad @{2026-03-12}
- [ ] PC01 documentation #docs #pc01 @{2026-03-12}
- [ ] Add documentation to DC01 for handling PC01 joining the domain + troubleshooting if passwords need to be reset #docs #dc01 #ad @{2026-03-12}
- [ ] Change PFSENSE-FW01 domain name before adding as dns forwarder to dc01 #config #pfsense #dns @{2026-03-12}
- [ ] Add PFSENSE-FW01 as DNS forwarder to DC01 + documentation for these steps #config #dc01 #dns @{2026-03-12}
- [ ] Add reverse lookup zone in DC01 + documentation (required for SIEM phase) #config #dc01 #dns #siem @{2026-03-12}
- [ ] Create WAZUH-SIEM01 documentation @{2026-03-14} #docs #wazuh #siem
- [ ] Create WAZUH-SIEM01 machine and basic configuration @{2026-03-14} #setup #wazuh #siem




%% kanban:settings
```
{"kanban-plugin":"board","list-collapse":[false,false,false],"show-checkboxes":false,"move-dates":true,"move-tags":true,"lane-width":372}
```
%%