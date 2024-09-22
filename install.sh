[ ! -f "/etc/systemd/system/xuione.service" ] && echo "XUI.one isn't installed!" && exit
[ ! -d "/home/xui/config" ] && echo "XUI.one isn't installed!" && exit
echo "XUI.one Crack"
echo "-------------"
echo "All Versions"
echo "By sysnull84"
echo "-------------
"
echo "Stopping XUI.one
"
sudo systemctl stop xuione
echo "Installing cracked license
"
cp -r license /home/xui/config/license
cp -r xui.so /home/xui/bin/php/lib/php/extensions/no-debug-non-zts-20190902/xui.so
echo "Update configuration file
"
sed -i "s/^license.*/license     =   \"cracked\"/g" /home/xui/config/config.ini
echo "Forcing PHP version 7.4
"
ln -sf /home/xui/bin/php/bin/php_7.4 /home/xui/bin/php/bin/php
ln -sf /home/xui/bin/php/sbin/php-fpm_7.4 /home/xui/bin/php/sbin/php-fpm
echo "Disabling PHP 7.2
"
ln -sf /home/xui/bin/php/bin/php_7.4 /home/xui/bin/php/bin/php_7.2
ln -sf /home/xui/bin/php/sbin/php-fpm_7.4 /home/xui/bin/php/sbin/php-fpm_7.2
echo "Starting XUI.one
"
sudo systemctl start xuione
echo "Cracked! ;)
"