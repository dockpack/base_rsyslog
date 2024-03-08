# base_rsyslog

## Ansible role to configure rsyslog in a C2S compliant way.
- Includes CIS benchmark verification with Molecule.
- Includes an end-to-end test with a client and server docker network.
- Configures client and server with self-signed
- Logs remote machines in their own directory

## TLS

- the  `molecule/default/prepare.yml` playbook generates a self-signed cert for testing.
- define `syslog_cert` as the basename of your certificate, the role assumes `.crt` as file extension.
- place the CA or self-signed certificate in the files directory  next to your playbook.
