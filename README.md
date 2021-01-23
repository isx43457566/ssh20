SSH
@edt ASIX M06 2020-2021

  $ docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d isx43457566/ldap20:latest
  
  $ docker run --rm --name ssh.edt.org -h ssh.edt.org --net 2hisix -p 2022:22 -d isx43457566/ssh20:base

  Docker compose:
    $ docker-compose up -d
    $ docker compose down
