#! /bin/bash

useradd unix01
useradd unix02
useradd unix03
echo -e "unix01\nunix01\n" | passwd --stdin unix01
echo -e "unix02\nunix02\n" | passwd --stdin unix02
echo -e "unix03\nunix03\n" | passwd --stdin unix03

cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/system-auth /etc/pam.d/system-auth
cp /opt/docker/system-auth /etc/pam.d/password-auth

/sbin/nscd
/sbin/nslcd

/usr/bin/ssh-keygen -A
/sbin/sshd -D
#/bin/bash

