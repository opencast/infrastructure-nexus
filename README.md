# Ansible Playbook for the Opencast Nexus mirrors

This Playbook is intended to manage the configuration of the [Opencast](http://www.opencast.org) Nexus repositories for building the software.

**Attention: This Playbook does not yet reflect the production system state.**

It should set up the following:

  - [ ] [GeoIP Gateway](https://github.com/lkiesow/geoip-gateway) to redirect requests to the (geographically) nearest available mirror
    - [x] Install software (from Git)
    - [ ] Install dependencies
    - [x] Configure software
    - [x] Configure systemd
    - [ ] Bind to Unix socket instead of Port
  - [ ] Nexus repository instance
    - [ ] Install software
    - [ ] Configure software
    - [ ] Configure systemd
  - [ ] Nginx reverse proxy for the Nexus instance and (for the master server) the GeoIP Gateway.
    - [ ] Install software
    - [ ] Configure master reverse proxy
    - [ ] Configure nexus mirror revers proxy
    - [ ] Configure systemd
  - [ ] Configure firewalld
    - [ ] Allow SSH
    - [ ] Allow Port 80 for http
    - [ ] Allow Port 443 for https
    - [ ] Deny all