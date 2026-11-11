#!/bin/bash

# Enable UFW
ufw --force enable

# Allow SSH
ufw allow ssh

# Deny HTTP
ufw deny 80/tcp

# Allow HTTPS
ufw allow 443

# Display configured rules
ufw status
