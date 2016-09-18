#!/bin/bash
service iptables stop && chkconfig iptables off && echo "firewall fixed"
echo ""
sleep 2
yum install -y wget && echo "wget installed...now get the repo"
sleep 2
sudo yum install -y java && echo " java installed"
echo ""
echo ""
sleep 2
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo && echo "got the repo"
echo ""
sleep 2
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key && echo "imported the repo"
echo ""
sleep 2
sudo yum install -y jenkins && echo "jenkins installed"
echo ""
sleep 2
sudo service jenkins start && echo "jenkins started"
echo ""
sleep 2
sudo chkconfig jenkins on
echo ""
sleep 2
