#!/bin/sh
sudo mkdir /tmp/A2
sudo mkdir /home/test2
sudo yum install wget -y >> /tmp/wget.log 2>&1
sudo yum install unzip -y >> /tmp/BAAS_Install_Boot.log 2>&1
sudo mkdir /tmp/Installer
sudo wget http://files.trendmicro.com/products/deepsecurity/en/9.6/Agent-RedHat_EL6-9.6.2-7888.x86_64.zip -P /tmp/Installer
sudo unzip /tmp/Installer/Agent-RedHat_EL6-9.6.2-7888.x86_64.zip -d /tmp/Installer
sudo rpm -i /tmp/Installer/Agent-Core-RedHat_EL6-9.6.2-7888.x86_64.rpm
sudo /opt/ds_agent/dsa_control -a dsm://atl-prd-tmdsm-01a.mss.iss.net:4120/ tenantID:D1D85977-4681-779E-D9F8-4AF4B91B3428 tenantPassword:29358A02-8271-267C-DD1B-0BB0DACA3797 >> /tmp/installlog.txt 2>&1
#sudo /opt/ds_agent/dsa_control -a dsm://atl-prd-tmdsm-01a.mss.iss.net:4120/ tenantID:D1D85977-4681-779E-D9F8-4AF4B91B3428 tenantPassword:29358A02-8271-267C-DD1B-0BB0DACA3797
