# script to ensure that our nginx server gets 0 failed requests under pressure

exec {'change limit':
  provider => shell,
  command  => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 2000\"/" /etc/default/nginx',
  before   => Exec['restart'],
}

exec {'restart':
  provider => shell,
  command  => 'sudo service nginx restart',
}
