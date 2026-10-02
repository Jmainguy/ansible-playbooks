# Ansible Playbooks for Infrastructure Management

## Description

This repository contains Ansible playbooks designed for managing and automating infrastructure tasks. These playbooks help streamline the deployment, configuration, and maintenance of various systems and services.

## DNS (BIND)

Authoritative DNS for `ns1` / `ns2` / `ns3.vpsaddict.com` is managed by the `dns` role (BIND9). ns1 is the primary; ns2/ns3 are slaves. Zone files live in `roles/dns/files/zones/`. RFC2136 TSIG keys are generated on the primary and are not stored in git.

Edit a zone file, bump the SOA serial, then run `ansible-playbook -i hosts playbook.yml --limit dns`. cert-manager DNS-01 uses `manifests/cert-manager-clusterissuer-rfc2136.yaml`.

## K3s pod capacity

`group_vars/k3s.yml` sets `k3s_max_pods: 200` for K3s nodes. A dedicated
playbook installs a kubelet configuration drop-in for both servers and agents.
Host variables can override the limit. Ensure each node has enough pod IPs,
CPU, and memory before increasing it further.

Run `ansible-playbook -i hosts k3s-pod-capacity.yml` to deploy the limit.
This requires K3s v1.32+ and local kubectl access to both cluster contexts.
It preserves existing service and networking options, restarts K3s only when
the drop-in changes, and verifies each node is Ready with the expected pod
capacity before proceeding. A control-plane restart briefly interrupts its API.

## Usage

```bash
ansible-playbook -i hosts playbook.yml
```
