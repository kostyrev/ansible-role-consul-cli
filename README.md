# consul-cli

[![Build Status](https://travis-ci.org/kostyrev/ansible-role-consul-cli.svg?branch=master)](https://travis-ci.org/kostyrev/ansible-role-consul-cli)

Install and configure [consul-cli](https://github.com/mantl/consul-cli)

Requirements
------------

None

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml) for a list and description of
variables used in this role.

Example Playbook
----------------

```yaml
- hosts: all
  gather_facts: no
  tasks:
    - name: install python 2
      raw: test -e /usr/bin/python || (apt -y update && apt install -y python-minimal)
      changed_when: no

- hosts: all
  vars:
    consul_cli_validate_certs: "{{ false if ansible_virtualization_type == 'docker' else true }}"
  roles:
    - kostyrev.consul-cli
```

Install From Github
-------------------

```
git clone https://github.com/kostyrev/ansible-role-consul-cli.git kostyrev.consul-cli
cd kostyrev.consul-cli && make install
```

License
-------

BSD

Author Information
------------------

Aleksandr Kostyrev
