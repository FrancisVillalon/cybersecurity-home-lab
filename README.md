# Cybersecurity Home Lab

> A fully virtualized enterprise network environment designed for hands-on practice in defensive security operations, network engineering, and attack simulation.

---

## Overview

This project documents the design, implementation, and operation of a small-scale corporate infrastructure built entirely in VirtualBox. The lab features a multi-zone network architecture (WAN, DMZ, LAN), centralized identity management, SIEM deployment, and controlled attack simulation.

---

## Architecture

### Network Zones

| Segment | Trust Level | CIDR | Purpose |
| :--- | :--- | :--- | :--- |
| **WAN_NET** | Untrusted | `203.0.113.0/24` | Simulates the public internet — origin of all external threats |
| **DMZ_NET** | Screened | `192.168.10.0/24` | Buffer zone hosting publicly accessible services |
| **LAN_NET** | Trusted | `192.168.20.0/24` | Internal corporate network protected by default-deny firewall policy |

### Asset Inventory

| VM | Role | OS | Network |
| :--- | :--- | :--- | :--- |
| **EDGE-RTR01** | Edge Router | Ubuntu Server 25.10 | WAN + DMZ |
| **PFSENSE-FW01** | Firewall / Gateway | pfSense | DMZ + LAN |
| **DC01** | Domain Controller / DNS | Windows Server 2019 | LAN |
| **PC01** | Workstation | Windows 11 | LAN |
| **WAZUH-SIEM01** | SIEM Server | Ubuntu Server 22.04.5 | LAN |
| **ELK-SIEM01** | Log Pipeline / Visualization | Ubuntu Server | LAN |
| **NESSUS-SCAN01** | Vulnerability Scanner | Tenable Core | LAN |
| **ATTACKER01** | Threat Actor | Kali Linux | WAN + DMZ |

---

## Core Objectives

| # | Objective | Status |
| :--- | :--- | :--- |
| 1 | **Network Segmentation** — Three-zone architecture (WAN, DMZ, LAN) | ✅ Complete |
| 2 | **Firewall & Routing** — pfSense enforcing inter-zone policies | ✅ Complete |
| 3 | **Edge Services** — Upstream router handling NAT and DNS for the DMZ | ✅ Complete |
| 4 | **Identity Management** — Active Directory domain (`lab.internal`) | ✅ Complete |
| 5 | **Security Monitoring (Wazuh)** — Endpoint detection, alerting, and correlation | 🔄 In Progress |
| 6 | **Security Monitoring (ELK)** — Log ingestion, enrichment, and visualization with Sysmon | 🔲 Planned |
| 7 | **Vulnerability Management** — Nessus scanning and remediation prioritization | 🔲 Planned |
| 8 | **Attack Simulation** — External threat scenarios validating detection controls | 🔲 Planned |
| 9 | **Technical Documentation** — Comprehensive per-device and architecture notes | 🔄 In Progress |

---

## Technology Stack

**Networking**
- pfSense · Ubuntu Server (edge routing) · VirtualBox NAT & Internal Networks

**Identity & Endpoint**
- Active Directory Domain Services · DNS · Group Policy · Sysmon

**Security Monitoring**
- Wazuh (Manager · Indexer · Dashboard) · ELK Stack · Beats · OpenSearch

**Attack & Recon**
- Kali Linux · Nessus

---

## Documentation

Each device has a dedicated note serving as its single source of truth in documentation:

- [`documentation/High-level Design.md`](documentation/High-level%20Design.md) — Architecture, network design, asset inventory, and design decisions
- [`documentation/EDGE-RTR01.md`](documentation/EDGE-RTR01.md) — Edge router configuration
- [`documentation/PFSENSE-FW01.md`](documentation/PFSENSE-FW01.md) — Firewall rules and routing
- [`documentation/DC01.md`](documentation/DC01.md) — Active Directory, DNS, OU structure
- [`documentation/PC01.md`](documentation/PC01.md) — Workstation setup and domain join
- [`documentation/WAZUH-SIEM01.md`](documentation/WAZUH-SIEM01.md) — SIEM deployment and agent management
- [`documentation/ATTACKER01.md`](documentation/ATTACKER01.md) — Attacker machine setup

---

## Roadmap

- [ ] Complete Wazuh agent deployment across all endpoints
- [ ] Deploy ELK stack with Sysmon enrichment pipeline
- [ ] Deploy Nessus and run initial vulnerability scan
- [ ] Simulate attack scenarios — CVE-2025-59287, CVE-2025-21418, CVE-2025-21376
- [ ] Deploy WSUS for lateral movement research (Update Injection)
- [ ] Evaluate VyOS as an alternative edge router
- [ ] Implement RADIUS/NPS for pfSense authentication
- [ ] Explore AI enrichment for SIEM log analysis
