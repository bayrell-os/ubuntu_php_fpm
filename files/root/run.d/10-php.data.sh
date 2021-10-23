if [ ! -d /data/php ]; then
	mkdir -p /data/php
	chown www:www /data/php
fi
if [ ! -d /data/php/session ]; then
	mkdir -p /data/php/session
	chown www:www /data/php/session
fi
if [ ! -d /data/php/wsdlcache ]; then
	mkdir -p /data/php/wsdlcache
	chown www:www /data/php/wsdlcache
fi
if [ ! -d /data/home ]; then
	mkdir -p /data/home
	chown -R www:www /data/home
fi
if [ ! -z $TZ ]; then
	sed -i "s|date.timezone = .*|date.timezone = $TZ|g" /etc/php/7.4/cli/php.ini
	sed -i "s|date.timezone = .*|date.timezone = $TZ|g" /etc/php/7.4/fpm/php.ini
fi
