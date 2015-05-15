# thesis-puppet
puppet script to config thesis application

# Preparation
# ===============
1) Hostname
Edit /etc/hostname, add your hostname, e.g. thesis
Edit /etc/hosts, add match your hostname and IP, e.g.
......
10.0.2.15 thesis

Logoff and login again to take effect.

2) Install external puppet modules
# This job can be done by using a vagrant sheel command before puppet provisioner runs: 
# http://stackoverflow.com/questions/17508081/installing-a-puppet-module-from-a-manifest-script
$ puppet module install puppetlabs-tomcat


