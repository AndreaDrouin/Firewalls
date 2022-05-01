#open port 80
iptables -I INPUT -p tcp --dport 80 -j ACCEPT

#open port 443
iptables -I INPUT -p tcp --dport 443 -j ACCEPT

#forward port 80 to 8080
iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080
iptables -I INPUT -p tcp --dport 8080 -j ACCEPT
