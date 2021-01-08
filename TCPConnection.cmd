    ::        ::                                                                      ::        ::
    :: SERVER ::                                                                      :: CLIENT ::  
    ::        ::                                                                      ::        ::

:: Open port 12000 on Loopback interface                                          :: Connect to server
nc -l -p 12000 -s 127.0.0.1                                                       nc 127.0.0.1 12000


:: Listen and wait for message                                                    :: Send message
Hello                                                                             Hello

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Use tcpdump to display the TCP three way handshake connection and sended paquets
tcpdum -n -i lo 'port 12000'

