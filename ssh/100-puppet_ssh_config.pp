#!/usr/bin/env bash
# connect to a server using a client's ssh private key ~/.ssh/school and configure without a password
exec { 'echo':
  path    => 'usr/bin:/bin',
  command => 'echo "    IdentityFile ~/.ssh/school\n    PasswordAuthentication no" >> /etc/ssh/ssh_config',
  returns => [0,1],
}
