# the puppet manifest using strace to fix a 500 status code error.

exec {'new word':
    command  => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
    provider => shell,
}
