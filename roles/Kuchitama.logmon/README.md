ansible-logmon
=========

Install logmon use [Kuchitama/logmon](https://github.com/Kuchitama/logmon).
Kuchitama/logmon is fork of [moomindani/logmon](https://github.com/moomindani/logmon).

### References

* https://moomindani.wordpress.com/2014/06/24/cloudwatch_logmon/
* http://qiita.com/inouet/items/cc1eacef237f2328e98f

Requirements
------------

nothing.

Role Variables
--------------

```
logmon_installer_version: "0.1.0"
logmon_settings:
  - { file: "/var/log/messages", str: "error", command: "echo -e \"ERROR\\n<%%%%>\""}
```

Dependencies
------------

nothing.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: kuchitama.logmon }
      logmon_installer_version: "0.1.0"
      logmon_settings:
        - { file: "/var/log/messages", str: "error", command: "echo -e \"ERROR\\n<%%%%>\"" }


License
-------

MIT


