REVOKE ALL PRIVILEGES ON * . * FROM 'livinglegend'@'localhost';

REVOKE ALL PRIVILEGES ON `world` . * FROM 'livinglegend'@'localhost';
REVOKE GRANT OPTION ON `world` . * FROM 'livinglegend'@'localhost';

REVOKE ALL PRIVILEGES ON `chars` . * FROM 'livinglegend'@'localhost';
REVOKE GRANT OPTION ON `chars` . * FROM 'livinglegend'@'localhost';

REVOKE ALL PRIVILEGES ON `logon` . * FROM 'livinglegend'@'localhost';
REVOKE GRANT OPTION ON `logon` . * FROM 'livinglegend'@'localhost';

DROP USER 'livinglegend'@'localhost';

DROP DATABASE IF EXISTS `world`;
DROP DATABASE IF EXISTS `chars`;
DROP DATABASE IF EXISTS `logon`;
