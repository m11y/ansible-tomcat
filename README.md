tomcat
========

Ansible role to install tomat, forked from https://github.com/alexanderjardim/tomcat.


Role Variables
--------------
```
---
# version
tomcat_version: "8.0.20"
tomcat_install_dir: '/opt/tomcat-{{ tomcat_version }}'
tomcat_download_dir: '~/.ansible/download'
tomcat_sha256sum: '74870fea2930c10f39d586dc26b3f488f3c8b51f3030e74561e462188609a390'

# port and protocol
tomcat_port: 8080
tomcat_address: "{{ ansible_eth0.ipv4.address }}"
tomcat_connection_timeout: 20000   #in milisseconds
tomcat_protocol: "org.apache.coyote.http11.Http11NioProtocol"
tomcat_uri_encoding: "UTF-8"
tomcat_shutdown_port: 8005
tomcat_redirect_port: 8443
tomcat_ajp_port: -1    # -1 means do not use ajp

# logging
tomcat_log_level: 'FINE'
tomcat_log_dir: '{{tomcat_install_dir}}/logs'
tomcat_log_backups: 10
tomcat_logging_template: 'logging.properties.j2'
tomcat_access_log: false
tomcat_keep_manage_app: false

# roles
tomcat_roles: []
# users
tomcat_users: []
# opts
tomcat_catalina_opts: "-Djava.awt.headless=true -Dfile.encoding=UTF-8 -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/tmp"

```

Dependencies
------------

    semparatus.jdk

Example Playbook
-------------------------

```
    - hosts: servers
      roles:
      - role: 'ansible-tomcat'
        tomcat_version: '8.0.20'
        tomcat_install_dir: "/opt/tomcat-{{ tomcat_version }}.appname"

```

License
-------

BSD
