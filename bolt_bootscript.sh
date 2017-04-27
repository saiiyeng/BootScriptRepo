#!/bin/sh
#sudo mkdir /tmp/A2
#sudo mkdir /home/test2
echo "Starting Installation " >> /tmp/BOLT_Install_Boot.log
sudo -i
whoami
ls
sed -i -e 's/Defaults requiretty.*/ #Defaults requiretty/g' /etc/sudoers
sudo yum install wget -y >> /tmp/wget.log 2>&1
sudo yum install unzip -y >> /tmp/BAAS_Install_Boot.log 2>&1
sudo mkdir /tmp/Installer
sudo cd /tmp/Installer
sudo wget http://files.trendmicro.com/products/deepsecurity/en/9.6/Agent-RedHat_EL7-9.6.2-7723.x86_64.zip 
sudo unzip Agent-RedHat_EL7-9.6.2-7723.x86_64.zip
sudo rpm -i Agent-Core-RedHat_EL7-9.6.2-7723.x86_64.rpm
#sudo /opt/ds_agent/dsa_control -a dsm://atl-prd-tmdsm-01a.mss.iss.net:4120/ tenantID:D1D85977-4681-779E-D9F8-4AF4B91B3428 tenantPassword:29358A02-8271-267C-DD1B-0BB0DACA3797
