Deploy on Ubuntu
===

## Install Apache2
Source: [ubuntugeek: Install Apache2 with CGI and Perl Support](http://www.ubuntugeek.com/how-to-install-apache2-webserver-with-phpcgi-and-perl-support-in-ubuntu-server.html)

### Install Apache2 in Ubuntu
`sudo apt-get install apache2`

### Config default CGI
Add the below config into `/etc/apache2/sites-enabled/000-default.conf`
```conf
    ScriptAlias /cgi-bin/ /var/www/cgi-bin/
    <Directory /var/www/cgi-bin/>
	    AllowOverride None
		Options +ExecCGI -MultiViews +SymLinksIfOwnerMatch
		Require all granted
    </Directory>
```
### Enable cgi module
```bash
sudo a2enmod cgi
```
Source: [stackoverflow: 'Perl Apache : Perl script displayed as plain text'](https://stackoverflow.com/questions/14792978/perl-apache-perl-script-displayed-as-plain-text)

### Deploy code
```bash
ln -s *Metrics /var/www/cgi-bin/
ln -s fair_metrics* /var/www/cgi-bin/
```

Run Metrices
===
## run
`./runMetrices.sh > runMetrices.json `
## view the result
open the output file (runMetrices.json) in https://jsoneditoronline.org/