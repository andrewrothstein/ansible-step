andrewrothstein.step
=========
![Build Status](https://github.com/andrewrothstein/ansible-step/actions/workflows/build.yml/badge.svg)

Installs the [smallstep cli](https://github.com/smallstep/cli)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - role: andrewrothstein.step
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
