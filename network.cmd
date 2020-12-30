:: --------------------------
::                         --
:: LINUX NETWORKS COMMANDS --
::                         --
:: --------------------------

:: Display Ip adresses in all interfaces
ifconfig -a | egrep "([0-9]{1,3}\.){3}[0-9]{1,3}|$"

:: Display IP Netmask and Broadcast adresses from eth0 interface
ifconfig eth0 | egrep "([0-9]{1,3}\.){3}[0-9]{1,3}"

:: Ping to a machine. Send only 2 paquets (-c 2
ping -c [number of paquets] [ip adress]

:: Display used ports 
netstat -4antp

:: Ask for a MAC adress and ping to related machine
arping [ip adress]

:: Display Arp table
arp -n

:: Watch real time arp table
watch arp -n

:: Delete MAC adress from arp table
arp -d [ip adress]

:: Change interface ip adres 
ifconfig [interface name] [ip adress] netmask [mask adress]

:: Accept paquets even if they aren't for us (Became a router)
echo 1 > /proc/sys/net/ipv4/ip_forward

:: Display route table 
route -n

:: Add default route to route table 
route add default gw [ip adress of router port's]

:: Add route to route table
route add -net [Network ip adress] netmask [mask adress] gw [ip adress of router port's]

:: Delete route from route table
route del -net [Network ip adress] netmask [mask adress]

:: Lister to a specific interfce 
tcpdump -i [interface] icmp

:: Display the whole route of a pquet from our machine to website
traceroute -I [website url]

:: Display local open TCP ports
ss -antp 

:: Display local opend UDP ports
ss -anupm

:: display open TCP ports of a remote machine
nmap -sS [remote machine ip adress]

:: display open UDP ports of a remote machine
nmap -sU [remote machine ip adress]