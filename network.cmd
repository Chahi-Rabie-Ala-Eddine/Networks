:: --------------------------
::                         --
:: LINUX NETWORKS COMMANDS --
::                         --
:: --------------------------

:: Display Ip adresses in all interfaces
ifconfig -a | egrep "([0-9]{1,3}\.){3}[0-9]{1,3}|$"

:: Display IP Netmask and Broadcast adresses from eth0 interface
ifconfig eth0 | egrep "([0-9]{1,3}\.){3}[0-9]{1,3}"

:: Check if a remote machine is available by sending n paquets of m bytes with t ttl
ping -c [number of paquets] -s [size of paquets] -t [ttl value] [ip adress]

:: Display used ports 
netstat -4antp

:: Ask for a MAC adress and ping to related machine
arping [ip adress]

:: Display Arp table
arp -n

:: Display Arp table
cat /proc/net/arp

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

:: Display route table
ip route

:: Display route table
netstat -rn

:: Display route table
cat /proc/net/route

:: Add default route to route table 
route add default gw [ip adress of router port's]

:: Add route to route table
route add -net [Network ip adress] netmask [mask adress] gw [ip adress of router port's]

:: Delete route from route table
route del -net [Network ip adress] netmask [mask adress]

:: Lister to a specific interfce 
tcpdump -nAXi [interface]

:: Display the whole route of a pquet from our machine to website
traceroute -I [website url]

:: Display local open TCP ports
ss -antp 

:: Display local opend UDP ports
ss -anupm

:: Display open TCP ports of a remote machine [FORBIDEN COMMAND]
nmap -sS [remote machine ip adress]

:: Display open UDP ports of a remote machine [FORBIDEN COMMAND]
nmap -sU [remote machine ip adress]

:: Modern Ifconfig command
ip -d addr

:: Display traced system calls of listened paquets
strace tcpdump -n -i [interface] -n 

:: Display actual TCP connections 
netstat -tnp

:: Display actual TCP connections
lsof -ni -P

:: Display actual application's actions using its pid
strace -p [pid]

:: Listen to a specific port on an interfce 
tcpdump -ni [interface] 'port [port ]'

:: Establish a TCP connection with a server on a specific port
nc [server] [port]


