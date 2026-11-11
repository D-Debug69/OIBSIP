A UFW rule was configured to deny HTTP connections:

sudo ufw deny http
or
sudo ufw deny 80/tcp

The firewall configuration was verified using the following command:

sudo ufw status

The output confirmed that port 80/tcp was configured with a deny rule for incoming connections

A connectivity test was then performed using the command:

curl http://[IP_Adress]

Result:

curl: (7) Failde to connect to [IP_Adress] after 2087 ms: Could not connect to server

The failed connection indicates that HTTP access to the target machine could not be etablished. This outcome is consistent with the UFW deny rule configured for port 80 and demonstrated that HTTP traffic is effectively blocked by the firewall.

#What a firewall does

A firewall is a security mechanism that monitors and controls incoming and outgoing network traffic based on predefined rules. Its primary purpose is to protect a system from unauthorized access while allowing legitimate communications required for normal operation.

#What each rule achieves

The first rule (sudo ufw allow ssh) allows Secure Shell connections to the system.
The second rule (sudo ufw deny http) blocks incoming Http traffic on the port 80.

#Why these specific rules were chosen

Remote administration is often required to manage and maintain the system. Allowing ssh ensures that authorized users can securely access the machine when needed.
Also blocking http reduces the attack surface by preventing unauthorized access attempts and potential exploitation of web-based services.