# Ansible Playbooks for Infrastructure Management

## Description

This repository contains Ansible playbooks designed for managing and automating infrastructure tasks. These playbooks help streamline the deployment, configuration, and maintenance of various systems and services.

## DNS (BIND)

Authoritative DNS for `ns1` / `ns2` / `ns3.vpsaddict.com` is managed by the `dns` role (BIND9). ns1 is the primary; ns2/ns3 are slaves. Zone files live in `roles/dns/files/zones/`. RFC2136 TSIG keys are generated on the primary and are not stored in git.

Edit a zone file, bump the SOA serial, then run `ansible-playbook -i hosts playbook.yml --limit dns`. cert-manager DNS-01 uses `manifests/cert-manager-clusterissuer-rfc2136.yaml`.

## Usage

```bash
ansible-playbook -i hosts playbook.yml
```
