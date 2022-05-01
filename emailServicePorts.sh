#open port 25 (SMTP)
sudo iptables -A INPUT -p tcp -m tcp --dport 25 -j ACCEPT
firewall-cmd --add-service=smtp --permanent

#open port 143 (IMAP)
sudo iptables -A INPUT -p tcp -m tcp --dport 143 -j ACCEPT
firewall-cmd --add-service=imap --permanent

#open port 110 (POP3)
sudo iptables -A INPUT -p tcp -m tcp --dport 110 -j ACCEPT
firewall-cmd --add-service=pop3 --permanent

firewall-cmd --reload

