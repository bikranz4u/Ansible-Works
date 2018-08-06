Role Name
=========

This role is used to install Ossec (FIM tool) as a local installation.

Requirements
------------
Make sure you have email,SMTP server details handy.Download "ossec-hids-2.9.3.tar.gz" under files. 

Role Variables
--------------
<global>
    <email_notification>{{ do_you_want_mail }}</email_notification>
    <email_to>{{ receiver }}</email_to>
    <smtp_server>{{ smtp_server_mxrecord }}</smtp_server>
    <email_from>{{ sender }}</email_from>
  </global>

Dependencies
------------


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - ossec-local

License
-------

BSD

Author Information
------------------

This role is written by Bikram
