#/bin/sh
echo '============================
      SSH Password Disabler
	 V1.0 Alpha
	Author:Anserme
============================'

cd /etc/ssh/
sed -i "/PermitRootLogin no/c PermitRootLogin yes" sshd_config
systemctl restart sshd
systemctl restart ssh
cd ~
rm -rf rootenabler.sh
