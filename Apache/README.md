# Apache

10.15.7

## File Configurations

*/etc/hosts*
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

*/etc/Apache2/httpd.conf*

- Uncomment PHP module
- Change username
```
User wrightben
Group _www
```


*/etc/Apache2/extra/httpd-vhosts.conf*
- Add VirtualHost entry
```
<VirtualHost *:80>
    ServerName dev.wrightben.com
    ServerAdmin admin@wrightben.com
    DocumentRoot "/Library/WebServer/Documents/"
</VirtualHost>
```