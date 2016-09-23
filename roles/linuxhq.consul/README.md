# ansible-role-consul

[![Build Status](https://travis-ci.org/linuxhq/ansible-role-consul.svg?branch=master)](https://travis-ci.org/linuxhq/ansible-role-consul)

RHEL/CentOS - A tool for discovering and configuring services

## Requirements

None

## Role Variables

Available variables are listed below, along with default values:

    consul_datacenter: local
    consul_data_dir: /var/lib/consul
    consul_log_level: INFO
    consul_node_name: localhost
    consul_server: True
    consul_ui: False

Additional variables available, not defined by default:

    consul_bin: /usr/sbin/consul
    consul_client_addr: 0.0.0.0
    consul_config_file: /etc/consul/consul.json
    consul_enable_syslog: True
    consul_leader: localhost
    consul_log_file: /var/log/consul/consul.log
    consul_opts: ""
    consul_pid_file: /var/run/consul/consul.pid
    consul_start_join:
      - consul1.host.com
      - consul2.host.com
      - consul3.host.com
    consul_syslog_facility: LOCAL0
    consul_telemetry:
      disable_hostname: False
      dogstatsd_addr: 127.0.0.1:8125
      dogstatsd_tags:
        - "my_tag_name1:my_tag_value1"
        - "my_tag_name2:my_tag_value2"
      statsd_address: 127.0.0.1
      statsite_address: 127.0.0.1:2180
      statsite_prefix: consul
    consul_user: consul
    consul_watches:
      - handler: /usr/bin/health-check-handler.sh
        prefix: foo/
        type: checks

## Dependencies

 * https://galaxy.ansible.com/linuxhq/linuxhq

## Example Playbooks

Playbook for building a standalone consul server

    - hosts: localhost
      connection: local
      roles:
        - role: linuxhq.consul
          consul_client_addr: 0.0.0.0
          consul_datacenter: phx
          consul_node_name: "{{ inventory_hostname }}"
          consul_server: True
          consul_telemetry: {}
          consul_ui: True
          consul_watches: []

Playbook for building a three node consul cluster

    - hosts: consul
      connection: ssh
      roles:
        - role: linuxhq.consul
          consul_client_addr: 0.0.0.0
          consul_datacenter: phx
          consul_leader: consul1.host.com
          consul_node_name: "{{ inventory_hostname }}"
          consul_server: True
          consul_start_join:
            - consul1.host.com
            - consul2.host.com
            - consul3.host.com
          consul_telemetry: {}
          consul_ui: True
          consul_watches: []

## Partners

[![packagecloud](http://dka575ofm4ao0.cloudfront.net/pages-transactional_logos/retina/10543/gKme3F4XRaC5EyKJzKsA)](https://packagecloud.io)

Do you need trustworthy hosted package repositories?  Then packagecloud is for you.

A big thank you to packagecloud for supporting the open source community!
         
## License

BSD

## Author Information

This role was created by [Taylor Kimball](http://www.linuxhq.org).
