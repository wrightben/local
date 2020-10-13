# Apache

10.15.7

## Configure Localhost


### 1 - Edit config files

<br />

**/etc/hosts**
- Add localhost entry: dev.wrightben.com
```
##
# Host Database
#
# localhost is used to configure the loopback interface
# when the system is booting.  Do not change this entry.
#
# My Notes
# Note the blank line following ::1 localhost
#
#
##
127.0.0.1	localhost
127.0.0.1	dev.wrightben.com
255.255.255.255	broadcasthost
::1             localhost

```

<br />

**/etc/Apache2/httpd.conf**

- **php**: uncomment: LoadModule php7_module libexec/apache2/libphp7.so
- **User**: change to: wrightben
```
User wrightben
Group _www
```
- **vhosts**: uncomment: Include /private/etc/apache2/extra/httpd-vhosts.conf
<br />

**/etc/Apache2/extra/httpd-vhosts.conf**
- Add VirtualHost entry
```
<VirtualHost *:80>
    ServerName dev.wrightben.com
    ServerAdmin admin@dev.wrightben.com
    DocumentRoot "/Library/WebServer/Documents/wrightben"
</VirtualHost>
```


<br /><br />
### 2 - Permission /Library/Webserver/Documents
- Resolve 403 error  ... and provide write permission for files in directory
```
cd /Library/Webserver/Documents
sudo chown -R wrightben .
```


<br /><br />
### 3 - Add an index.php file
```
<!DOCTYPE html>
<html>
	<head>
		<title>HTML: Index</title>
	</head>
	<body>
		<?php
			print __FILE__;
		?>
	</body>
</html>
```