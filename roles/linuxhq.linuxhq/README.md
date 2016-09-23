# ansible-role-linuxhq

[![Build Status](https://travis-ci.org/linuxhq/ansible-role-linuxhq.svg?branch=master)](https://travis-ci.org/linuxhq/ansible-role-linuxhq)

Installs a linuxhq package specific RPM repository.

## Requirements

None

## Role Variables

There are no default variables for this role.

## Dependencies

None

## Example Playbook

    - hosts: servers
      roles:
        - role: linuxhq.linuxhq
          linuxhq_pkg: snoopy

## Partners

[![packagecloud](http://dka575ofm4ao0.cloudfront.net/pages-transactional_logos/retina/10543/gKme3F4XRaC5EyKJzKsA)](https://packagecloud.io)

Do you need trustworthy hosted package repositories?  Then packagecloud is for you.

A big thank you to packagecloud for supporting the open source community!

## License

BSD

## Author Information

This role was created by [Taylor Kimball](http://www.linuxhq.org).
