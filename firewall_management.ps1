#Microsoft docs https://learn.microsoft.com/en-us/troubleshoot/windows-server/networking/netsh-advfirewall-firewall-control-firewall-behavior

#Adding the 5555 port to allow connections
netsh http add urlacl url=http://+:5555/ user=ALL

#Block inbound connections for the port 445
netsh advfirewall firewall add rule dir=in action=block protocol=TCP localport=445 name="Block_TCP-445"
#Block outbound connections for the port 445
netsh advfirewall firewall add rule dir=out action=block protocol=TCP localport=445 name="Block_TCP-445"
