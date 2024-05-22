#! /usr/bin/env bash

# Generate a 20-character random password
USERNAME=web2tty
PASSWORD=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c 20)

# Output the generated password
echo "web2tty username: $USERNAME"
echo "web2tty password: $PASSWORD"

# Start tty2web with the generated password
/usr/local/bin/tty2web --port 8080 -c $USERNAME:$PASSWORD -w /bin/bash
