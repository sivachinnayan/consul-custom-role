# Ansible role for NodeJS

[![Build Status](https://travis-ci.org/torian/ansible-role-nodejs.svg)](https://travis-ci.org/torian/ansible-role-nodejs)

This Ansible role installs [NodeJS](https://nodejs.org/en/) through the official
repository packages.

## Supported Platforms
  * EL / Centos (6 / 7)
  * Debian (Wheezy / Jessie)
  * Ubuntu (Trusty)
  * AMZ Linux

## Role Variables

The following role variables are defined in `defaults/main.yml`. For a
detailed explanation about them you can take a look at the file.

```
nodejs_version:     4.2
nodejs_npm_version: 2.14.7
```

## Usage

```
---
- hosts: all

  vars:
    - nodejs_version: 4.2

  roles:
    - { role: torian.nodejs }

```

